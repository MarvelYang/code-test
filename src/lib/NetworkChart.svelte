<script lang="ts">
  import { onMount } from "svelte";
  import * as echarts from "echarts";
  import "tailwindcss/tailwind.css";
  import { generateData } from "./data/dataGenerator";
  import type { Node, Link } from "./data/dataGenerator";

  let chartDom: HTMLDivElement;
  let chart: echarts.ECharts;

  // 获取节点和连线数据
  const { nodes, links }: { nodes: Node[]; links: Link[] } = generateData();

  onMount(() => {
    chart = echarts.init(chartDom);
    const option: echarts.EChartOption = {
      animationDurationUpdate: 1500,
      animationEasingUpdate: "quinticInOut",
      tooltip: {
        formatter: (params: any) => {
          if (params.dataType === "node") {
            const badges = params.data.badges
              ? params.data.badges.join(",<br /> ")
              : "No badges";
            return `Node: ${params.data.name}<br/>Badges:<br/> ${badges}`;
          } else {
            return `Link: ${params.data.source} → ${params.data.target}`;
          }
        },
      },
      series: [
        {
          type: "graph",
          layout: "none",
          roam: true,
          label: {
            show: true,
            position: "right",
            fontSize: 20,
            formatter: function (params: any) {
              const badges = params.data.badges
                ? params.data.badges
                    .map((badge: string) => `{badge|${badge}}`)
                    .join("  ")
                : "";
              return `${params.data.name}\n${badges}`;
            },
            rich: {
              badge: {
                backgroundColor: "#555",
                borderRadius: 3,
                padding: [2, 4],
                fontSize: 10,
                color: "#fff",
                align: "center",
                verticalAlign: "middle",
                lineHeight: 15,
                height: 15,
                width: "auto", // 自适应宽度
                margin: [0, 4, 0, 4], // 增加badge之间的间距
              },
            },
          },
          edgeSymbol: ["none", "arrow"],
          edgeSymbolSize: [6, 12],
          data: nodes,
          links: links,
          lineStyle: {
            color: "source",
            curveness: 0.3,
          },
          emphasis: {
            focus: "adjacency",
            lineStyle: {
              width: 10,
            },
          },
        },
      ],
    };
    chart.setOption(option);
    console.log(chart.getOption());
  });
</script>

<div bind:this={chartDom} class="chart-container"></div>

<style>
  .chart-container {
    width: 100%;
    height: 100%;
  }
</style>
