# Rick's Math Note 📐

这是 **Rick's Math Note** 个人数学笔记网站工程。

## 📁 目录结构与工作机制

- **Obsidian 笔记库**：`C:\Users\陈秀莲\Desktop\obsidian文件夹\Rick's Math Note`
- **网站构建工程**：`C:\Users\陈秀莲\Desktop\obsidian文件夹\Rick-Math-Note-Site`
- **无缝连接机制**：网站工程内的 `content/` 文件夹通过 Windows 目录链接（Junction）直连您的 Obsidian 笔记库。
  - **在 Obsidian 中增删改笔记，网站端实时生效，零手动搬运！**

---

## 🚀 常用操作

### 1. 本地实时预览
在 `Rick's Math Note` 或 `Rick-Math-Note-Site` 文件夹中，双击运行：
👉 **`启动本地预览.bat`**
- 浏览器将自动打开 `http://localhost:8080`
- 在 Obsidian 中编辑、保存笔记时，网页会自动刷新显示最新效果。

### 2. 发布上线到 GitHub Pages
初次配置：
1. 在 [GitHub](https://github.com/new) 创建一个新的公开或私有仓库（例如 `math-notes`）。
2. 在 `Rick-Math-Note-Site` 目录下打开终端执行（替换为您自己的 GitHub 仓库地址）：
   ```bash
   git remote add origin https://github.com/<您的用户名>/<仓库名>.git
   git push -u origin main
   ```
3. 在 GitHub 仓库页面中点击 **Settings** -> **Pages**，在 **Build and deployment** 下将 **Source** 切换为 **GitHub Actions** 即可。

以后更新笔记时：
双击运行：
👉 **`一键发布到GitHub.bat`**
系统会自动完成 `git add`、`git commit` 与 `git push`，GitHub Actions 随后会在云端自动构建并发布！

---

## ✍️ 数学公式与排版特性

- **行内公式**：`$E = mc^2$`
- **块级公式**：
  ```latex
  $$\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}$$
  ```
- **分段函数与矩阵**：
  ```latex
  $$T(a)=\begin{cases}a_{j+1}, & a=a_j \in A_2,\\[4pt]a, & a\notin A_2.\end{cases}$$
  ```
- **数学 Callout 环境**：
  ```markdown
  > [!theorem] 定理标题
  > 定理正文内容...

  > [!proof] 证明
  > 证明正文... (尾部会自动附带 ■ 证讫符号)

  > [!definition] 定义
  > 定义正文...
  ```
  还支持 `[!lemma]`（引理）、`[!corollary]`（推论）、`[!proposition]`（命题）、`[!note]`（笔记）、`[!abstract]`（结论）等。
