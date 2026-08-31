/* ==========================================================================
   SecurePaper - Chart.js Dashboards Analytics Initialization
   ========================================================================== */

document.addEventListener('DOMContentLoaded', () => {
  initHeroDashboardChart();
  initAdminDashboardCharts();
  initFacultyDashboardCharts();
  initEvaluatorDashboardCharts();
  initStudentDashboardCharts();
});

/* --------------------------------------------------------------------------
   0. Hero Landing Dashboard Mockup Chart
   -------------------------------------------------------------------------- */
function initHeroDashboardChart() {
  const heroCtx = document.getElementById('heroLiveChart');
  if (heroCtx && typeof Chart !== 'undefined') {
    new Chart(heroCtx, {
      type: 'line',
      data: {
        labels: ['09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00'],
        datasets: [{
          label: 'Live Concurrent Exams',
          data: [120, 290, 450, 680, 820, 750, 940],
          borderColor: '#4f46e5',
          borderWidth: 3,
          backgroundColor: (context) => {
            const chart = context.chart;
            const {ctx, chartArea} = chart;
            if (!chartArea) return null;
            const gradient = ctx.createLinearGradient(0, chartArea.top, 0, chartArea.bottom);
            gradient.addColorStop(0, 'rgba(79, 70, 229, 0.35)');
            gradient.addColorStop(1, 'rgba(6, 182, 212, 0.0)');
            return gradient;
          },
          fill: true,
          tension: 0.4,
          pointRadius: 4,
          pointBackgroundColor: '#06b6d4'
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: { display: false },
          tooltip: {
            backgroundColor: '#0b0f19',
            titleFont: { family: 'Plus Jakarta Sans', weight: '700' },
            bodyFont: { family: 'Plus Jakarta Sans' },
            padding: 10,
            cornerRadius: 8
          }
        },
        scales: {
          x: { grid: { display: false } },
          y: { grid: { color: 'rgba(226, 232, 240, 0.5)' }, beginAtZero: true }
        }
      }
    });
  }
}

/* --------------------------------------------------------------------------
   1. Admin Dashboard Analytics Charts
   -------------------------------------------------------------------------- */
function initAdminDashboardCharts() {
  const deptCtx = document.getElementById('adminDeptChart');
  if (deptCtx && typeof Chart !== 'undefined') {
    new Chart(deptCtx, {
      type: 'doughnut',
      data: {
        labels: ['BCA', 'MCA', 'BBA', 'MBA', 'B.Tech', 'Pharmacy'],
        datasets: [{
          data: [420, 210, 350, 180, 510, 150],
          backgroundColor: ['#4f46e5', '#06b6d4', '#8b5cf6', '#f59e0b', '#10b981', '#ec4899'],
          borderWidth: 0
        }]
      },
      options: {
        responsive: true,
        plugins: { legend: { position: 'bottom' } }
      }
    });
  }

  const examsCtx = document.getElementById('adminExamsBarChart');
  if (examsCtx && typeof Chart !== 'undefined') {
    new Chart(examsCtx, {
      type: 'bar',
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
        datasets: [{
          label: 'Completed Exams',
          data: [65, 80, 95, 120, 140, 110, 155],
          backgroundColor: '#4f46e5',
          borderRadius: 6
        }, {
          label: 'Scheduled Exams',
          data: [20, 15, 30, 25, 40, 35, 50],
          backgroundColor: '#06b6d4',
          borderRadius: 6
        }]
      },
      options: {
        responsive: true,
        plugins: { legend: { position: 'top' } },
        scales: { y: { beginAtZero: true } }
      }
    });
  }

  const trendCtx = document.getElementById('adminPerformanceLineChart');
  if (trendCtx && typeof Chart !== 'undefined') {
    new Chart(trendCtx, {
      type: 'line',
      data: {
        labels: ['2021', '2022', '2023', '2024', '2025', '2026'],
        datasets: [{
          label: 'Pass Rate (%)',
          data: [82, 85, 88, 87, 92, 95],
          borderColor: '#10b981',
          backgroundColor: 'rgba(16, 185, 129, 0.1)',
          fill: true,
          tension: 0.4
        }]
      },
      options: {
        responsive: true,
        plugins: { legend: { position: 'top' } },
        scales: { y: { min: 70, max: 100 } }
      }
    });
  }
}

/* --------------------------------------------------------------------------
   2. Faculty Dashboard Analytics Charts
   -------------------------------------------------------------------------- */
function initFacultyDashboardCharts() {
  const facCtx = document.getElementById('facultyPerformanceChart');
  if (facCtx && typeof Chart !== 'undefined') {
    new Chart(facCtx, {
      type: 'bar',
      data: {
        labels: ['HTML5/CSS3', 'JavaScript', 'ASP.NET', 'C#', 'SQL Server'],
        datasets: [{
          label: 'Class Average Marks (%)',
          data: [88, 79, 85, 82, 91],
          backgroundColor: '#8b5cf6',
          borderRadius: 8
        }]
      },
      options: {
        responsive: true,
        plugins: { legend: { position: 'top' } },
        scales: { y: { beginAtZero: true, max: 100 } }
      }
    });
  }
}

/* --------------------------------------------------------------------------
   3. Evaluator Dashboard Analytics Charts
   -------------------------------------------------------------------------- */
function initEvaluatorDashboardCharts() {
  const evalCtx = document.getElementById('evaluatorThroughputChart');
  if (evalCtx && typeof Chart !== 'undefined') {
    new Chart(evalCtx, {
      type: 'line',
      data: {
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
        datasets: [{
          label: 'Evaluated Papers',
          data: [42, 58, 65, 70, 85, 60],
          borderColor: '#06b6d4',
          backgroundColor: 'rgba(6, 182, 212, 0.15)',
          fill: true,
          tension: 0.3
        }]
      },
      options: {
        responsive: true,
        plugins: { legend: { position: 'top' } }
      }
    });
  }
}

/* --------------------------------------------------------------------------
   4. Student Dashboard Analytics Charts
   -------------------------------------------------------------------------- */
function initStudentDashboardCharts() {
  const studentCtx = document.getElementById('studentAttendanceChart');
  if (studentCtx && typeof Chart !== 'undefined') {
    new Chart(studentCtx, {
      type: 'doughnut',
      data: {
        labels: ['Attended', 'Absent'],
        datasets: [{
          data: [92, 8],
          backgroundColor: ['#10b981', '#ef4444'],
          borderWidth: 0
        }]
      },
      options: {
        responsive: true,
        plugins: { legend: { position: 'bottom' } }
      }
    });
  }
}
