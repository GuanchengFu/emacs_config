;; Close minor-mode tool-bar-mode and scroll-bar-mode
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Display the number of lines.
(global-linum-mode 1)

(setq-default cursor-type 'box)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)


(set-face-attribute 'default nil :height 160)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; Theme definition, delete this if do not want to use the current theme.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(deeper-blue))
 '(package-selected-packages '(company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Do not generate the back up files
(setq make-backup-files nil)


(global-company-mode 1)
