// src/data/dataGenerator.ts
export const colors: { [key: string]: string[] } = {
  red: ["#F24B50", "#FF6B6B", "#FFA07A"],
  green: ["#4CAF50", "#81C784", "#A5D6A7"],
  blue: ["#42A5F5", "#64B5F6", "#90CAF9"],
  yellow: ["#FBC02D", "#F9A825", "#F57F17"]
};

// 定义节点和连线的接口
export interface Node {
  name: string;
  value: number;
  itemStyle: {
    color: string;
    borderColor: string;
    borderWidth: number;
  };
  symbolSize: number;
  category: string;
  badges?: string[];
}

export interface Link {
  source: string;
  target: string;
  lineStyle: {
    color: string;
  };
}

const getRandomInt = (max: number): number => {
  return Math.floor(Math.random() * max);
};

export const generateData = () => {
  const nodes: Node[] = [];
  const links: Link[] = [];
  let nodeIndex = 1;
  const allChildNodes: Node[] = [];
  const width = 1000;
  const height = 800;

  const createNodes = (color: keyof typeof colors, count: number) => {
    const mainNode: Node = {
      name: `${nodeIndex}`,
      value: 20,
      badges: ["b1", "b2", "b3"],
      itemStyle: {
        color: colors[color][0],
        borderColor: "#ccc",
        borderWidth: 1,
      },
      symbolSize: 100,
      category: color,
      x: Math.random() * width,
      y: Math.random() * height,
    };
    nodes.push(mainNode);
    nodeIndex++;

    const childNodes: Node[] = [];

    for (let i = 1; i < count; i++) {
      const node: Node = {
        name: `${nodeIndex}`,
        value: 10,
        itemStyle: {
          color: colors[color][(i % (colors[color].length - 1)) + 1],
          borderColor: "#ccc",
          borderWidth: 1,
        },
        symbolSize: 50,
        category: color,
        badges: ["b1", "b2"],
        x: Math.random() * width,
        y: Math.random() * height,
      };
      nodes.push(node);
      childNodes.push(node);
      links.push({
        source: mainNode.name,
        target: node.name,
        lineStyle: {
          color: colors[color][0],
        },
      });
      nodeIndex++;
    }

    allChildNodes.push(...childNodes);

    // 在子节点之间随机创建连接
    for (let i = 0; i < childNodes.length; i++) {
      const randomTargetIndex = getRandomInt(childNodes.length);
      if (randomTargetIndex !== i) {
        links.push({
          source: childNodes[i].name,
          target: childNodes[randomTargetIndex].name,
          lineStyle: {
            color: colors[color][0],
          },
        });
      }
    }
  };

  createNodes("red", 8);
  createNodes("green", 6);
  createNodes("blue", 6);
  createNodes("yellow", 4);

  // 在不同颜色的子节点之间随机创建连接
  for (let i = 0; i < allChildNodes.length; i++) {
    const randomTargetIndex = getRandomInt(allChildNodes.length);
    if (randomTargetIndex !== i) {
      links.push({
        source: allChildNodes[i].name,
        target: allChildNodes[randomTargetIndex].name,
        lineStyle: {
          color: allChildNodes[i].itemStyle.color,
        },
      });
    }
  }

  return { nodes, links };
};
