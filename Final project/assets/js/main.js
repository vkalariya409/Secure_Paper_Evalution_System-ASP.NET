/* ==========================================================================
   SecurePaper - Core Frontend JavaScript Framework
   Handles Theme Switching, Department Subject Filtering, Quiz Builder & Timer
   ========================================================================== */

document.addEventListener('DOMContentLoaded', () => {
  initThemeToggle();
  initSidebarToggle();
  initDepartmentFilter();
  initQuizBuilder();
  initQuizTimer();
  initPaperEvaluator();
});

/* --------------------------------------------------------------------------
   1. Theme Toggle Management (Light / Dark)
   -------------------------------------------------------------------------- */
function initThemeToggle() {
  const themeToggles = document.querySelectorAll('.sp-theme-toggle');
  const savedTheme = localStorage.getItem('securepaper_theme') || 'light';
  
  applyTheme(savedTheme);

  themeToggles.forEach(toggle => {
    toggle.addEventListener('click', (e) => {
      e.preventDefault();
      const currentTheme = document.documentElement.getAttribute('data-bs-theme') || 'light';
      const newTheme = currentTheme === 'light' ? 'dark' : 'light';
      applyTheme(newTheme);
      localStorage.setItem('securepaper_theme', newTheme);
    });
  });
}

function applyTheme(theme) {
  document.documentElement.setAttribute('data-bs-theme', theme);
  const themeIcons = document.querySelectorAll('.sp-theme-toggle i');
  
  themeIcons.forEach(icon => {
    if (theme === 'dark') {
      icon.className = 'bi bi-sun-fill text-warning';
    } else {
      icon.className = 'bi bi-moon-stars-fill text-primary';
    }
  });
}

/* --------------------------------------------------------------------------
   2. Responsive Sidebar Toggle
   -------------------------------------------------------------------------- */
function initSidebarToggle() {
  const sidebarToggler = document.querySelector('.sp-sidebar-toggler');
  const sidebar = document.querySelector('.sp-sidebar');

  if (sidebarToggler && sidebar) {
    sidebarToggler.addEventListener('click', () => {
      sidebar.classList.toggle('show');
    });
  }
}

/* --------------------------------------------------------------------------
   3. Department to Subject Dynamic Filter System
   -------------------------------------------------------------------------- */
const departmentSubjectsMap = {
  BCA: [
    { name: 'HTML5 & Responsive Web', code: 'BCA-101', credits: 4 },
    { name: 'CSS3 & UI Design', code: 'BCA-102', credits: 4 },
    { name: 'JavaScript & DOM Logic', code: 'BCA-103', credits: 4 },
    { name: 'ASP.NET Web Development', code: 'BCA-201', credits: 4 },
    { name: 'C# Programming Language', code: 'BCA-202', credits: 4 },
    { name: 'SQL Server Database System', code: 'BCA-203', credits: 4 },
    { name: 'Data Structures & Algorithms', code: 'BCA-301', credits: 4 }
  ],
  BBA: [
    { name: 'Principles of Marketing', code: 'BBA-101', credits: 3 },
    { name: 'Financial Accounting', code: 'BBA-102', credits: 4 },
    { name: 'Human Resource Management', code: 'BBA-201', credits: 3 },
    { name: 'Corporate Finance', code: 'BBA-202', credits: 4 },
    { name: 'Managerial Economics', code: 'BBA-301', credits: 3 }
  ],
  MCA: [
    { name: 'Advanced ASP.NET Enterprise Architecture', code: 'MCA-101', credits: 4 },
    { name: 'Cloud Database & SQL Optimization', code: 'MCA-102', credits: 4 },
    { name: 'Software Engineering & Testing', code: 'MCA-201', credits: 4 },
    { name: 'Cyber Security & Cryptography', code: 'MCA-202', credits: 4 }
  ],
  MBA: [
    { name: 'Strategic Management', code: 'MBA-101', credits: 4 },
    { name: 'Organizational Behavior', code: 'MBA-102', credits: 3 },
    { name: 'Business Analytics & BI', code: 'MBA-201', credits: 4 },
    { name: 'International Finance', code: 'MBA-202', credits: 3 }
  ],
  'B.Tech': [
    { name: 'Digital Logic Circuit Design', code: 'CS-101', credits: 4 },
    { name: 'Operating Systems & Kernel Design', code: 'CS-201', credits: 4 },
    { name: 'Computer Networks & TCP/IP', code: 'CS-202', credits: 4 },
    { name: 'Compiler Design & Automata', code: 'CS-301', credits: 4 }
  ],
  Pharmacy: [
    { name: 'Pharmacology & Therapeutics', code: 'PHA-101', credits: 4 },
    { name: 'Medicinal Organic Chemistry', code: 'PHA-102', credits: 4 },
    { name: 'Biochemistry & Molecular Biology', code: 'PHA-201', credits: 4 }
  ],
  Nursing: [
    { name: 'Human Anatomy & Physiology', code: 'NUR-101', credits: 4 },
    { name: 'Clinical Nursing Foundations', code: 'NUR-102', credits: 4 },
    { name: 'Community Health Nursing', code: 'NUR-201', credits: 3 }
  ]
};

function initDepartmentFilter() {
  const deptDropdown = document.getElementById('spDepartmentSelect');
  const subjectDropdown = document.getElementById('spSubjectSelect');
  const subjectsContainer = document.getElementById('spSubjectsContainer');

  if (deptDropdown) {
    deptDropdown.addEventListener('change', (e) => {
      const dept = e.target.value;
      updateSubjects(dept, subjectDropdown, subjectsContainer);
    });

    // Initial load trigger if value exists
    if (deptDropdown.value) {
      updateSubjects(deptDropdown.value, subjectDropdown, subjectsContainer);
    }
  }
}

function updateSubjects(dept, subjectDropdown, container) {
  const subjects = departmentSubjectsMap[dept] || departmentSubjectsMap['BCA'];

  // Update Select dropdown if present
  if (subjectDropdown) {
    subjectDropdown.innerHTML = '<option value="">-- Select Subject --</option>';
    subjects.forEach(subj => {
      const opt = document.createElement('option');
      opt.value = subj.code;
      opt.textContent = `${subj.code} - ${subj.name}`;
      subjectDropdown.appendChild(opt);
    });
  }

  // Update Card View Container if present
  if (container) {
    container.innerHTML = '';
    subjects.forEach(subj => {
      const cardHTML = `
        <div class="col-md-6 col-lg-4 mb-4">
          <div class="card h-100 sp-card">
            <div class="card-body">
              <div class="d-flex align-items-center justify-content-between mb-3">
                <span class="badge badge-sp primary">${subj.code}</span>
                <span class="text-muted small"><i class="bi bi-clock me-1"></i> ${subj.credits} Credits</span>
              </div>
              <h5 class="card-title text-dark fw-bold">${subj.name}</h5>
              <p class="card-text text-muted small">Department: ${dept} | Semester: Active Course</p>
              <div class="d-flex flex-wrap gap-2 mt-3">
                <a href="upload-quiz.html" class="btn btn-sm btn-sp-primary"><i class="bi bi-patch-question me-1"></i> Quiz</a>
                <a href="upload-theory.html" class="btn btn-sm btn-sp-secondary"><i class="bi bi-file-earmark-pdf me-1"></i> Theory</a>
                <a href="upload-practical.html" class="btn btn-sm btn-sp-outline"><i class="bi bi-code-slash me-1"></i> Practical</a>
              </div>
            </div>
          </div>
        </div>
      `;
      container.innerHTML += cardHTML;
    });
  }
}

/* --------------------------------------------------------------------------
   4. Interactive Quiz Builder (Faculty Portal)
   -------------------------------------------------------------------------- */
function initQuizBuilder() {
  const addQuestionBtn = document.getElementById('spAddQuestionBtn');
  const questionsList = document.getElementById('spQuestionsList');

  if (addQuestionBtn && questionsList) {
    let questionCounter = questionsList.children.length;

    addQuestionBtn.addEventListener('click', () => {
      questionCounter++;
      const qHTML = `
        <div class="card mb-4 sp-card question-item" id="qItem_${questionCounter}">
          <div class="card-header bg-light d-flex justify-content-between align-items-center">
            <span class="fw-bold text-primary"><i class="bi bi-question-circle-fill me-2"></i> Question #${questionCounter}</span>
            <button type="button" class="btn btn-sm btn-outline-danger" onclick="removeQuestion('qItem_${questionCounter}')">
              <i class="bi bi-trash"></i> Remove
            </button>
          </div>
          <div class="card-body">
            <div class="mb-3">
              <label class="form-label fw-semibold">Question Statement</label>
              <textarea class="form-control" rows="2" placeholder="Enter full question description..."></textarea>
            </div>
            <div class="row g-3 mb-3">
              <div class="col-md-6">
                <label class="form-label text-muted small">Option A</label>
                <div class="input-group">
                  <span class="input-group-text">A</span>
                  <input type="text" class="form-control" placeholder="Option A text">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label text-muted small">Option B</label>
                <div class="input-group">
                  <span class="input-group-text">B</span>
                  <input type="text" class="form-control" placeholder="Option B text">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label text-muted small">Option C</label>
                <div class="input-group">
                  <span class="input-group-text">C</span>
                  <input type="text" class="form-control" placeholder="Option C text">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label text-muted small">Option D</label>
                <div class="input-group">
                  <span class="input-group-text">D</span>
                  <input type="text" class="form-control" placeholder="Option D text">
                </div>
              </div>
            </div>
            <div class="row g-3">
              <div class="col-md-4">
                <label class="form-label fw-semibold">Correct Answer</label>
                <select class="form-select">
                  <option value="A">Option A</option>
                  <option value="B">Option B</option>
                  <option value="C">Option C</option>
                  <option value="D">Option D</option>
                </select>
              </div>
              <div class="col-md-4">
                <label class="form-label fw-semibold">Marks</label>
                <input type="number" class="form-control" value="2" min="1" max="10">
              </div>
              <div class="col-md-4">
                <label class="form-label fw-semibold">Difficulty</label>
                <select class="form-select">
                  <option value="Easy">Easy</option>
                  <option value="Medium" selected>Medium</option>
                  <option value="Hard">Hard</option>
                </select>
              </div>
            </div>
          </div>
        </div>
      `;
      questionsList.insertAdjacentHTML('beforeend', qHTML);
    });
  }
}

window.removeQuestion = function(id) {
  const elem = document.getElementById(id);
  if (elem) elem.remove();
};

/* --------------------------------------------------------------------------
   5. Interactive Live Student Quiz & Timer Engine
   -------------------------------------------------------------------------- */
function initQuizTimer() {
  const timerDisplay = document.getElementById('spQuizTimerDisplay');
  if (!timerDisplay) return;

  let totalSeconds = 15 * 60; // 15 Minutes
  const countdownInterval = setInterval(() => {
    const minutes = Math.floor(totalSeconds / 60);
    const seconds = totalSeconds % 60;
    
    timerDisplay.textContent = `${String(minutes).padStart(2, '0')}:${String(seconds).padStart(2, '0')}`;

    if (totalSeconds <= 0) {
      clearInterval(countdownInterval);
      alert('Time Limit Exceeded! Submitting test automatically.');
      const submitBtn = document.getElementById('spSubmitQuizBtn');
      if (submitBtn) submitBtn.click();
    } else {
      totalSeconds--;
    }
  }, 1000);
}

/* --------------------------------------------------------------------------
   6. Paper Evaluator Calculator Engine
   -------------------------------------------------------------------------- */
function initPaperEvaluator() {
  const markInputs = document.querySelectorAll('.sp-eval-mark-input');
  const totalScoreElem = document.getElementById('spEvalTotalScore');
  const percentageElem = document.getElementById('spEvalPercentage');
  const gradeElem = document.getElementById('spEvalGrade');

  if (markInputs.length && totalScoreElem) {
    const calculateMarks = () => {
      let sum = 0;
      markInputs.forEach(input => {
        const val = parseFloat(input.value) || 0;
        sum += val;
      });
      totalScoreElem.textContent = sum.toFixed(1);
      const percentage = (sum / 50) * 100;
      if (percentageElem) percentageElem.textContent = `${percentage.toFixed(1)}%`;

      if (gradeElem) {
        if (percentage >= 85) gradeElem.textContent = 'A+ (Excellent)';
        else if (percentage >= 75) gradeElem.textContent = 'A (Very Good)';
        else if (percentage >= 60) gradeElem.textContent = 'B (Good)';
        else if (percentage >= 40) gradeElem.textContent = 'C (Pass)';
        else gradeElem.textContent = 'F (Fail)';
      }
    };

    markInputs.forEach(input => input.addEventListener('input', calculateMarks));
    calculateMarks();
  }
}
