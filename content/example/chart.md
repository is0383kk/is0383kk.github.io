---
title: "棒グラフ"
date: 2023-10-09T14:05:48+09:00
draft: false
keywords: [is0383kk, yoshiwo, よしを, よしをの備忘録]
---

# 棒グラフ

{{< rawhtml >}}

<section id="skills">
  <canvas id="skillChart" width="400" height="300"></canvas>
</section>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  const ctx = document.getElementById('skillChart').getContext('2d');
  const skillChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['HTML', 'CSS', 'JavaScript', 'React', 'Hugo', 'Python'],
      datasets: [{
        label: 'スキルレベル（1〜10）',
        data: [9, 8, 9, 7, 6, 8],
        backgroundColor: 'rgba(75, 192, 192, 0.5)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true,
          max: 10
        }
      }
    }
  });
</script>
{{< /rawhtml >}}
