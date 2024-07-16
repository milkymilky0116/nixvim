{
  config = {
    opts = {
      # Enable relative line numbers
      number = true;
      relativenumber = true;
      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;
      expandtab = true;
      # Enable auto indenting and set it to spaces
      smartindent = true;
      shiftwidth = 2;

      # Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
      breakindent = true;
      wrap = true;
      termguicolors = true;
      cursorline = true;
      scrolloff = 8;
      encoding = "utf-8";
      fileencoding = "utf-8";
      cmdheight = 0;
      timeoutlen = 10;
      showmode = false;
    };
  };
}