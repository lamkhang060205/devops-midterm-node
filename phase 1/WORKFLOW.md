# Git Workflow – Phase 1

This document describes the Git workflow used by our team for the DevOps Midterm Project.

---

## 1. Branching Strategy

We follow a feature-branch workflow:

- `main` → stable production-ready branch
- `feature/<short-description>` → used for developing new features or tasks

Examples:
- feature/windows-readme
- feature/git-workflow-doc
- feature/setup-script

Direct commits to `main` are NOT allowed.

All changes must go through Pull Requests.

---

## 2. Pull Request Process

For every task:

1. Create a new branch from `main`
2. Make changes locally
3. Commit with a meaningful message
4. Push the branch to GitHub
5. Create a Pull Request into `main`
6. Request at least 1 team member for review
7. After approval, merge into `main`

Branch protection is enabled to enforce:
- Pull Request required before merging
- At least 1 approval required

---

## 3. Commit Message Convention

We use clear and meaningful commit messages.

Format:

type: short description

Examples:
- chore: initialize repository structure
- docs: update README for Windows
- feat: add setup automation script
- fix: correct MongoDB connection handling

Common types:
- feat → new feature
- fix → bug fix
- docs → documentation changes
- chore → maintenance or configuration
- refactor → code improvement without changing behavior

---

## 4. Code Review Policy

Each Pull Request must:
- Clearly describe what was changed
- Be reviewed by at least one team member
- Resolve all conversations before merging

This ensures:
- Code quality
- Collaboration
- Clear contribution history from all members

---

## 5. Repository Structure Requirement

To follow the midterm guidelines, the repository is organized into:

- phase1/
- phase2/
- phase3/

Each phase will contain:
- Scripts
- Configuration files
- Evidence (screenshots)
- Documentation

---

## 6. Contribution Tracking

All team members must:
- Create their own branches
- Make meaningful commits
- Participate in code reviews

Contribution history will be visible in:
- Pull Requests
- Commit history
- GitHub contributors section

This ensures fair contribution distribution among all 3 members.

---

## 7. Security Practices

- `.env` file is NOT committed
- `.env.example` is provided instead
- Secrets and credentials must not be hardcoded
- node_modules is ignored

---

This workflow ensures structured collaboration and follows DevOps best practices for version control and team coordination.