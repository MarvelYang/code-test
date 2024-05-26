import { render } from '@testing-library/svelte';
import NetworkChart from '../NetworkChart.svelte';
import { describe, it, expect } from 'vitest';

describe('NetworkChart', () => {
  it('renders the network chart', () => {
    const { container } = render(NetworkChart);
    expect(container.querySelector('div')).toBeInTheDocument();
  });
});
