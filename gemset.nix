{
  ast = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04nc8x27hlzlrr5c2gn7mar4vdr0apw5xg22wp6m8dx3wqr04a0y";
      type = "gem";
    };
    version = "2.4.2";
  };
  backport = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xbzzjrgah0f8ifgd449kak2vyf30micpz6x2g82aipfv7ypsb4i";
      type = "gem";
    };
    version = "1.2.0";
  };
  benchmark = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "017jh2lx3z5hqjvnqclc5bfr5q0d3zk0nqjfz73909ybr4h20kmi";
      type = "gem";
    };
    version = "0.2.1";
  };
  citrus = {
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l7nhk3gkm1hdchkzzhg2f70m47pc0afxfpl6mkiibc9qcpl3hjf";
      type = "gem";
    };
    version = "3.0.2";
  };
  diff-lcs = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rwvjahnp7cpmracd8x732rjgnilqv2sx7d1gfrysslc3h039fa9";
      type = "gem";
    };
    version = "1.5.0";
  };
  e2mmap = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0n8gxjb63dck3vrmsdcqqll7xs7f3wk78mw8w0gdk9wp5nx6pvj5";
      type = "gem";
    };
    version = "0.1.0";
  };
  jaro_winkler = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10fd3i92897blalxfkgc0jjv0qqx31v7cm7j2b6a3b97an0bfz80";
      type = "gem";
    };
    version = "1.5.6";
  };
  json = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nalhin1gda4v8ybk6lq8f407cgfrj6qzn234yra4ipkmlbfmal6";
      type = "gem";
    };
    version = "2.6.3";
  };
  keycutter = {
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09v950ip9wn5l17dcd7jdyz43aj2hmy8q3rj31q430mz0q02z98n";
      type = "gem";
    };
    version = "1.0.2";
  };
  kramdown = {
    dependencies = ["rexml"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ic14hdcqxn821dvzki99zhmcy130yhv5fqfffkcf87asv5mnbmn";
      type = "gem";
    };
    version = "2.4.0";
  };
  kramdown-parser-gfm = {
    dependencies = ["kramdown"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0a8pb3v951f4x7h968rqfsa19c8arz21zw1vaj42jza22rap8fgv";
      type = "gem";
    };
    version = "1.1.0";
  };
  mini_portile2 = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z7f38iq37h376n9xbl4gajdrnwzq284c9v1py4imw3gri2d5cj6";
      type = "gem";
    };
    version = "2.8.2";
  };
  nokogiri = {
    dependencies = ["mini_portile2" "racc"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mr2ibfk874ncv0qbdkynay738w2mfinlkhnbd5lyk5yiw5q1p10";
      type = "gem";
    };
    version = "1.15.2";
  };
  parallel = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jcc512l38c0c163ni3jgskvq1vc3mr8ly5pvjijzwvfml9lf597";
      type = "gem";
    };
    version = "1.23.0";
  };
  parser = {
    dependencies = ["ast"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08f89nssj7ws7sjfvc2fcjpfm83sjgmniyh0npnmpqf5sfv44r8x";
      type = "gem";
    };
    version = "3.2.2.1";
  };
  pastel = {
    dependencies = ["tty-color"];
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xash2gj08dfjvq4hy6l1z22s5v30fhizwgs10d6nviggpxsj7a8";
      type = "gem";
    };
    version = "0.8.0";
  };
  racc = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09jgz6r0f7v84a7jz9an85q8vvmp743dqcsdm3z9c8rqcqv6pljq";
      type = "gem";
    };
    version = "1.6.2";
  };
  rainbow = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0smwg4mii0fm38pyb5fddbmrdpifwv22zv3d3px2xx497am93503";
      type = "gem";
    };
    version = "3.1.1";
  };
  rake = {
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15whn7p9nrkxangbs9hh75q585yfn66lv0v2mhj6q6dl6x8bzr2w";
      type = "gem";
    };
    version = "13.0.6";
  };
  rbs = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dgj5n7rj83981fvrhswfwsh88x42p7r00nvd80hkxmdcjvda2h6";
      type = "gem";
    };
    version = "2.8.4";
  };
  regexp_parser = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17xizkw5ryw8hhq64iqxmzdrrdxpc5lhkqc1fgm1aj0zsk1r2950";
      type = "gem";
    };
    version = "2.8.0";
  };
  reverse_markdown = {
    dependencies = ["nokogiri"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0087vhw5ik50lxvddicns01clkx800fk5v5qnrvi3b42nrk6885j";
      type = "gem";
    };
    version = "2.1.1";
  };
  rexml = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08ximcyfjy94pm1rhcx04ny1vx2sk0x4y185gzn86yfsbzwkng53";
      type = "gem";
    };
    version = "3.2.5";
  };
  rspec = {
    dependencies = ["rspec-core" "rspec-expectations" "rspec-mocks"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "171rc90vcgjl8p1bdrqa92ymrj8a87qf6w20x05xq29mljcigi6c";
      type = "gem";
    };
    version = "3.12.0";
  };
  rspec-core = {
    dependencies = ["rspec-support"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l95bnjxdabrn79hwdhn2q1n7mn26pj7y1w5660v5qi81x458nqm";
      type = "gem";
    };
    version = "3.12.2";
  };
  rspec-expectations = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05j44jfqlv7j2rpxb5vqzf9hfv7w8ba46wwgxwcwd8p0wzi1hg89";
      type = "gem";
    };
    version = "3.12.3";
  };
  rspec-mocks = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hfm17xakfvwya236graj6c2arr4sb9zasp35q5fykhyz8mhs0w2";
      type = "gem";
    };
    version = "3.12.5";
  };
  rspec-support = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12y52zwwb3xr7h91dy9k3ndmyyhr3mjcayk0nnarnrzz8yr48kfx";
      type = "gem";
    };
    version = "3.12.0";
  };
  rubocop = {
    dependencies = ["json" "parallel" "parser" "rainbow" "regexp_parser" "rexml" "rubocop-ast" "ruby-progressbar" "unicode-display_width"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0013mnzj6ql3v8nif7fm8n2832jnwa46azync6azsg9d4iblrfmy";
      type = "gem";
    };
    version = "1.51.0";
  };
  rubocop-ast = {
    dependencies = ["parser"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gs8zjigzdqj0kcmmrhvd4zavwr6kz6h9qvrh9m7bhy56f4aqljs";
      type = "gem";
    };
    version = "1.28.1";
  };
  ruby-progressbar = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cwvyb7j47m7wihpfaq7rc47zwwx9k4v7iqd9s1xch5nm53rrz40";
      type = "gem";
    };
    version = "1.13.0";
  };
  solargraph = {
    dependencies = ["backport" "benchmark" "diff-lcs" "e2mmap" "jaro_winkler" "kramdown" "kramdown-parser-gfm" "parser" "rbs" "reverse_markdown" "rubocop" "thor" "tilt" "yard"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18wpma2mgw82qzf1jwjalmz7nwdvn87b22wd5yy16jb67fqgrq78";
      type = "gem";
    };
    version = "0.49.0";
  };
  stitches-synthesizer = {
    groups = ["production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12pbfcn43c1mc910p7xr4mppcvk3rc2p016zjyjk5magqa08cvjl";
      type = "gem";
    };
    version = "0.0.6";
  };
  stitches-terraform-synthesizer = {
    groups = ["production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rsicdm7xpq27q210wkdvbmrlhni9w51a9jir85qf0sgblc83v4r";
      type = "gem";
    };
    version = "0.0.2";
  };
  strings = {
    dependencies = ["strings-ansi" "unicode-display_width" "unicode_utils"];
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yynb0qhhhplmpzavfrrlwdnd1rh7rkwzcs4xf0mpy2wr6rr6clk";
      type = "gem";
    };
    version = "0.2.1";
  };
  strings-ansi = {
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "120wa6yjc63b84lprglc52f40hx3fx920n4dmv14rad41rv2s9lh";
      type = "gem";
    };
    version = "0.2.0";
  };
  thor = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0k7j2wn14h1pl4smibasw0bp66kg626drxb59z7rzflch99cd4rg";
      type = "gem";
    };
    version = "1.2.2";
  };
  tilt = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qmhi6d9przjzhsyk9g5pq2j75c656msh6xzprqd2mxgphf23jxs";
      type = "gem";
    };
    version = "2.1.0";
  };
  toml-rb = {
    dependencies = ["citrus"];
    groups = ["production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19nr4wr5accc6l2y3avn7b02lqmk9035zxq42234k7fcqd5cbqm1";
      type = "gem";
    };
    version = "2.2.0";
  };
  tty-box = {
    dependencies = ["pastel" "strings" "tty-cursor"];
    groups = ["production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12yzhl3s165fl8pkfln6mi6mfy3vg7p63r3dvcgqfhyzq6h57x0p";
      type = "gem";
    };
    version = "0.7.0";
  };
  tty-color = {
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0aik4kmhwwrmkysha7qibi2nyzb4c8kp42bd5vxnf8sf7b53g73g";
      type = "gem";
    };
    version = "0.6.0";
  };
  tty-cursor = {
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0j5zw041jgkmn605ya1zc151bxgxl6v192v2i26qhxx7ws2l2lvr";
      type = "gem";
    };
    version = "0.7.1";
  };
  tty-option = {
    groups = ["production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xibs7kgbsw401ywfw67wg47fmm7sdcypy85m25af9r2q2hbq7gb";
      type = "gem";
    };
    version = "0.2.0";
  };
  tty-progressbar = {
    dependencies = ["strings-ansi" "tty-cursor" "tty-screen" "unicode-display_width"];
    groups = ["production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pqjng07zjln4rxxmi8jlbx7cjrpfv684mrzl6nv715mjap2d5yv";
      type = "gem";
    };
    version = "0.18.2";
  };
  tty-screen = {
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18jr6s1cg8yb26wzkqa6874q0z93rq0y5aw092kdqazk71y6a235";
      type = "gem";
    };
    version = "0.8.1";
  };
  tty-table = {
    dependencies = ["pastel" "strings" "tty-screen"];
    groups = ["production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fcrbfb0hjd9vkkazkksri93dv9wgs2hp6p1xwb1lp43a13pmhpx";
      type = "gem";
    };
    version = "0.12.0";
  };
  unicode-display_width = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gi82k102q7bkmfi7ggn9ciypn897ylln1jk9q67kjhr39fj043a";
      type = "gem";
    };
    version = "2.4.2";
  };
  unicode_utils = {
    groups = ["default" "production"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0h1a5yvrxzlf0lxxa1ya31jcizslf774arnsd89vgdhk4g7x08mr";
      type = "gem";
    };
    version = "1.4.0";
  };
  yard = {
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "013yrnwx1zhzhn1fnc19zck22a1qgimsaglp2iwgf5bz9l8h93js";
      type = "gem";
    };
    version = "0.9.34";
  };
}
