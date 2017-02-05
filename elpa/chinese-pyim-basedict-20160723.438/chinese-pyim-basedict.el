;;; chinese-pyim-basedict.el --- The default pinyin dict of chinese-pyim

;; * Header
;; Copyright (C) 2015 Feng Shu <tumashu@163.com>

;; Author: Feng Shu <tumashu@163.com>
;; URL: https://github.com/tumashu/chinese-pyim-basedict
;; Version: 0.0.1
;; Keywords: convenience, Chinese, pinyin, input-method, complete

;;; License:

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;; * chinese-pyim-basedict README                         :README:doc:

;; ** 简介
;; Chinese-pyim-basedict 是 chinese-pyim 的默认词库，词库的内容的来源:

;; 1. libpinyin 项目的内置词库
;; 2. chinese-pyim 用户贡献的个人词库

;; 注意：这个词库的词条量大概在1万左右，是一个 *非常小* 得词库，只能确保 Chinese-pyim
;; 可以正常工作，如果用户想让 chinese-pyim 更加顺手，需要添加附加的词库，
;; 一个比较好的选择是安装 chinese-pyim-greatdict, 不过这个词库非常庞大，词条量
;; 超过300万，不适合计算机 cpu 和内存不足的用户。另外，用户也可以使用其它方式
;; 添加词库，具体请参考 chinese-pyim README 中的相关章节：

;;         https://github.com/tumashu/chinese-pyim

;; ** 安装和使用
;; 1. 配置melpa源，参考：http://melpa.org/#/getting-started
;; 2. M-x package-install RET chinese-pyim-basedict RET
;; 3. 在emacs配置文件中（比如: ~/.emacs）添加如下代码：
;;    #+BEGIN_EXAMPLE
;;    (require 'chinese-pyim-basedict)
;;    (chinese-pyim-basedict-enable)
;;    #+END_EXAMPLE

;; ** 如何为这个项目贡献词条
;; Chinese-pyim 的用户，如果想让自己常用词条进入 chinese-pyim 默认词库的话，
;; 可以运行 `pyim-contribute-words' , 然后按照它的提示操作就可以了。

;;; Code:
;; * 代码                                                               :code:
;; #+BEGIN_SRC emacs-lisp

;;;###autoload
(defun chinese-pyim-basedict-enable ()
  "Add basedict to chinese-pyim."
  (interactive)
  (let* ((file (concat (file-name-directory
                        (locate-library "chinese-pyim-basedict.el"))
                       "pyim-basedict.pyim.gz")))
    (when (file-exists-p file)
      (if (featurep 'chinese-pyim)
          (pyim-extra-dicts-add-dict
           `(:name "Basedict-elpa"
                   :file ,file
                   :coding utf-8-unix
                   :dict-type pinyin-dict
                   :elpa t))
        (message "Chinese-pyim 没有安装，chinese-pyim-basedict 启用失败。")))))
;; #+END_SRC

;; * Footer

;; #+BEGIN_SRC emacs-lisp
(provide 'chinese-pyim-basedict)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; chinese-pyim-basedict.el ends here
;; #+END_SRC
