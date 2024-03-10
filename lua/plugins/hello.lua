-- A very simple plugin with no real world use. Its simple creates a txt file and writes hello world.
-- Why? for the future me to know how to create a plugin using Lazy.nvim syntax. 
return {
    {
        "hello",
        dev = "true",
        dir = "~/.config/nvim/lua/plugins/hello.lua",
        cmd = "Hello",
        cond = "true",
        config = function()
            function hello()
                local file_path = "./hello_world.txt"
                local file = io.open(file_path, "w")
                if file then
                    file:write("Hello World!")
                    file:close()
                    vim.api.nvim_out_write("File created: " .. file_path)
                else
                    vim.api.nvim_err_writeln("Failed to create file: " .. file_path)
                end
            end
            vim.cmd([[command! Hello lua hello()]])        
        end
    }
}

