vim.api.nvim_create_user_command("StartServer", function(opts)
    local file = opts.args or vim.fn.expand("%:h") --%:h Use passed argument or current file path -- %:t Sirf file ka naam lyna hai
    print("Running live-server for file: " .. file)
    
    local is_running = os.execute("pgrep -x live-server > /dev/null")

    if is_running ~= 0 then
        print("Starting live-server...")
        os.execute("nohup live-server --open=" .. file .. " --browser=qutebrowser > /dev/null 2>&1 &")
    else
        print("Live-server is already running, reloading...")
        os.execute("qutebrowser :reload")
    end
end, {nargs = "?"})

vim.api.nvim_create_user_command("StopServer", function()
    os.execute("pkill -f live-server")
end, {})


-- ya php k server start/stop krta hai aur koi output nhi dyta
vim.api.nvim_create_user_command("StartPhp", function()
    local file = vim.fn.expand("%:t") -- Sirf file ka naam lena hai
    local url = "http://localhost:5000/" .. file -- Basename se URL banana

    print("Opening: " .. url)

    -- PHP server background mein start karna aur output ko log file mein likhna
    vim.fn.jobstart({ "nohup", "php", "-S", "localhost:5000", "-t", ".", "-q" }, {
        cwd = vim.fn.getcwd(), -- Server current directory mein chalega
    })

    -- Qutebrowser ko silently open karna
    vim.fn.jobstart({ "qutebrowser", ":open -t " .. url }, { detach = true })
end, {})

vim.api.nvim_create_user_command("StopPhp", function()
    os.execute("pkill -x php")
end, {})
