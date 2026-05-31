import { defineConfig } from 'vite'
import { resolve } from 'path'

export default defineConfig({
  // 必须与 GitHub 仓库名保持一致，这是部署到 GitHub Pages 的关键配置
  base: '/TypeMind/',
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        assessment: resolve(__dirname, 'assessment.html'),
        calibration: resolve(__dirname, 'calibration.html'),
        chat_base: resolve(__dirname, 'chat-base.html'),
        chat_typing: resolve(__dirname, 'chat-typing.html'),
        chat: resolve(__dirname, 'chat.html'),
        login: resolve(__dirname, 'login.html'),
        profile: resolve(__dirname, 'profile.html'),
        register: resolve(__dirname, 'register.html'),
        result: resolve(__dirname, 'result.html'),
        username_input: resolve(__dirname, 'username-input.html')
      }
    }
  }
})
