local vscode = require('vscode-neovim')
local myvscode = require('vscode')
-- local VSCodeNotify = vim.fn.VSCodeNotify
-- local VSCodeCall = vim.fn.VSCodeCall

-- Basic tesin

-- function Save()
-- 	VSCodeCall("workbench.action.files.save")
-- end

-- function save()
--   vscodecall("workbench.action.files.save")
-- end

function Save()
  myvscode.action("workbench.action.files.save")
end

function Quit_vscode()
  VSCodeCall("workbench.action.closeWindow")
end

function SplitVertical()
  VSCodeNotify("workbench.action.splitEditor")
end

function SplitDown()
  VSCodeNotify("workbench.action.splitEditorDown")
end

function Find_files()
  VSCodeNotify("workbench.action.quickOpen")
end

-- this approach is blocks the preview
-- function Find_string_in_files()
--   VSCodeNotify("workbench.action.quickTextSearch")
-- end

--this approach can't focus on result
function Find_string_in_files()
  VSCodeCall("workbench.action.findInFiles")
end

function Move_to_next_tab()
  VSCodeNotify("workbench.action.nextEditor")
end

function Move_to_previous_tab()
  VSCodeNotify("workbench.action.previousEditor")
end

function CloseEditor()
  VSCodeNotify("workbench.action.closeActiveEditor")
end

function UndoCloseEditor()
  VSCodeNotify("workbench.action.reopenClosedEditor")
end

function OpenExplorer()
    myvscode.call("workbench.view.explorer")
end

function OpenGit()
  myvscode.call("workbench.view.scm")
end

function Select_all()
  VSCodeNotify("editor.action.selectAll")
end

function Change_color_scheme()
  VSCodeNotify("workbench.action.selectTheme")
end

function Find_grep_string()
  VSCodeNotify("actions.find")
end

function Outdent()
  ---@diagnostic disable-next-line: unused-local
  for i = 1, vim.v.count1 do
    VSCodeNotify("editor.action.outdentLines")
  end
end

function Indent()
  ---@diagnostic disable-next-line: unused-local
  for i = 1, vim.v.count1 do
    VSCodeNotify("editor.action.indentLines")
  end
end

function Outdent_vis()
  VSCodeNotify("editor.action.outdentLines", false)
end

function Indent_vis()
  VSCodeNotify("editor.action.indentLines", false)
end

function Comment()
  VSCodeNotify("editor.action.commentLine")
end

function Comment_vis()
  VSCodeNotify("editor.action.commentLine", false)
end

function Toggle_fold()
  VSCodeNotify("editor.toggleFold")
end

function Fold_all()
  VSCodeNotify("editor.foldAll")
end

function Unfold_all()
  VSCodeNotify("editor.unfoldAll")
end

-- LSP
function Reveal_definition_aside()
  VSCodeNotify("editor.action.revealDefinitionAside")
end

function Go_to_implementation()
  VSCodeNotify("editor.action.goToImplementation")
end

function Move_line_down()
  VSCodeNotify("editor.action.moveLinesDownAction")
end

function Move_multiple_lines_down()
  VSCodeCall("editor.action.moveLinesDownAction")
end

function Move_line_up()
  VSCodeNotify("editor.action.moveLinesUpAction")
end

function Move_multiple_lines_up()
  VSCodeCall("editor.action.moveLinesUpAction")
end

function Go_to_symbol()
  VSCodeNotify("workbench.action.gotoSymbol")
end

function Go_to_references()
  VSCodeNotify("editor.action.goToReferences")
end

function Rename_symbol()
  VSCodeNotify("editor.action.rename")
end

function Go_to_parent_fold()
  VSCodeNotify("editor.gotoParentFold")
end

function Go_to_next_problem()
  VSCodeNotify("editor.action.marker.next")
end

function Go_to_prev_problem()
  VSCodeNotify("editor.action.marker.prev")
end

function Code_action()
  VSCodeNotify("editor.action.quickFix")
end

-- LSP
function Save_no_format()
  VSCodeCall("workbench.action.files.saveWithoutFormatting")
end

function Trim__save__no_format()
  Trim_trailing_whitespace()
  Save_no_format()
end

function Trim__save__no_highlight()
  Trim_trailing_whitespace()
  Save()
  -- Remove_highlighting()
end

function Format()
  VSCodeCall("editor.action.formatDocument")
  print("formatted!")
end

function Trim__save__format()
  Trim_trailing_whitespace()
  Format()
  Save()
end

function Convert_to_spaces()
  VSCodeNotify("editor.action.indentationToSpaces")
end

function Convert_to_tabs()
  VSCodeNotify("editor.action.indentationToTabs")
end

function Indent_with_spaces()
  VSCodeNotify("editor.action.indentUsingSpaces")
end

function Indent_with_tabs()
  VSCodeNotify("editor.action.indentUsingTabs")
end

-- GIT
function Git_stage_file()
  Trim_trailing_whitespace()
  Save()
  VSCodeNotify("git.stage")
end

function Git_unstage_file()
  Save()
  VSCodeNotify("git.unstage")
end

function Git_revert_change()
  VSCodeNotify("git.revertSelectedRanges")
end

function Git_stage_change()
  VSCodeNotify("git.stageSelectedRanges")
end

function Git_unstage_change()
  VSCodeNotify("git.unstageSelectedRanges")
end

function Git_open_changes()
  VSCodeNotify("git.openChange")
end

function Git_open_all_changes()
  VSCodeNotify("git.openAllChanges")
end

-- UNKNOWN
function Center_screen()
  Cmd("call <SNR>3_reveal('center', 0)")
end

function Top_screen()
  Cmd("call <SNR>3_reveal('top', 0)")
end

function Bottom_screen()
  Cmd("call <SNR>3_reveal('bottom', 0)")
end

function Move_to_top_screen()
  Cmd("call <SNR>3_moveCursor('top')")
end

function Move_to_bottom_screen()
  Cmd("call <SNR>3_moveCursor('bottom')")
end

function Scroll_line_down()
  VSCodeCall("scrollLineDown")
end

function Scroll_line_up()
  VSCodeCall("scrollLineUp")
end

function Vscode_ctrl_d() VSCodeNotify("vscode-neovim.ctrl-d") end

function Vscode_ctrl_u() VSCodeNotify("vscode-neovim.ctrl-u") end

function Better_ctrl_d()
  Vscode_ctrl_d()
  Center_screen()
end

function Better_ctrl_u()
  Vscode_ctrl_u()
  Center_screen()
end

function Move_to_bottom_screen__center_screen()
  Move_to_bottom_screen()
  Center_screen()
end

function Move_to_top_screen__center_screen()
  Move_to_top_screen()
  Center_screen()
end

function Trim_trailing_whitespace()
  VSCodeCall("editor.action.trimTrailingWhitespace")
end

function Accept_merge_both()
  VSCodeNotify("merge-conflict.accept.both")
end

function Accept_merge_all_both()
  VSCodeNotify("merge-conflict.accept.all-both")
end

function Accept_merge_current()
  VSCodeNotify("merge-conflict.accept.current")
end

function Accept_merge_all_current()
  VSCodeNotify("merge-conflict.accept.all-current")
end

function Accept_merge_incoming()
  VSCodeNotify("merge-conflict.accept.incoming")
end

function Accept_merge_all_incoming()
  VSCodeNotify("merge-conflict.accept.all-incoming")
end

function Accept_merge_selection()
  VSCodeNotify("merge-conflict.accept.selection")
end

function Codesnap()
  VSCodeNotify("codesnap.start", true)
end

function Toggle_breakpoint()
  VSCodeNotify("editor.debug.action.toggleBreakpoint")
end

function Copy_path()
  VSCodeNotify("copyFilePath")
end

function Copy_relative_path()
  VSCodeNotify("copyRelativeFilePath")
end
