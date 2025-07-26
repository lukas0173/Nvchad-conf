local M = {}

function M.setup()
  require("code_runner").setup {
    -- put here the commands by filetype
    filetype = {
      typescript = "deno run",
      javascript = "node",
      rust = "cd $dir && rustc $fileName && ./$fileNameWithoutExt",
      cpp = "cd $dir && g++ -std=c++20 $fileName -o $fileNameWithoutExt && time ./$fileNameWithoutExt && rm $fileNameWithoutExt",
      c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && time ./$fileNameWithoutExt && rm $fileNameWithoutExt",
      sh = "chmod +x $fileName && time bash $fileName",
    },

    -- Project run
    project = {},

    mode = "term",
    focus = "true",
    startinsert = "true",

    term = {
      position = "bot",
      size = 10,
    },
  }
end

return M
