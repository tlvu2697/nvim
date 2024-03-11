----------------------------------------------------
-- https://github.com/tpope/vim-projectionist
----------------------------------------------------
return {
  "tpope/vim-projectionist",
  config = function()
    local rake = {
      ["lib/*.rake"] = {
        alternate = "spec/lib/{}_rake_spec.rb",
        type = "source",
      },
      ["spec/*_rake_spec.rb"] = {
        alternate = "{}.rake",
        type = "test",
      },
    }

    local rails = {
      ["app/*.rb"] = {
        alternate = "spec/{}_spec.rb",
        type = "source",
      },
      ["app/controllers/*_controller.rb"] = {
        alternate = {
          "spec/requests/{}_spec.rb",
          "spec/controllers/{}_controller_spec.rb",
        },
        type = "source",
      },
      ["spec/requests/*_spec.rb"] = {
        command = "request",
        alternate = "app/controllers/{}_controller.rb",
        type = "test",
      },
      ["lib/*.rb"] = {
        alternate = "spec/lib/{}_spec.rb",
        type = "source",
      },
      ["spec/*_spec.rb"] = {
        alternate = {
          "app/{}.rb",
          "{}.rb",
        },
        type = "test",
      },
    }

    local javascript = {
      ["*.js"] = {
        alternate = {
          "{dirname}/__tests__/{basename}.spec.js",
          "{dirname}/__tests__/integration.spec.js",
          "{dirname}/__test__/{basename}.spec.js",
          "{dirname}/__test__/integration.spec.js",
        },
        type = "source",
      },
      ["*/integration.spec.js"] = {
        type = "test",
        alternate = {
          "{dirname}/index.js",
          "{dirname}/index.ts",
          "{dirname}/index.tsx",
        },
      },
      ["*.spec.js"] = {
        alternate = {
          "{dirname}/../{basename}.js",
          "{dirname}/../{basename}.ts",
          "{dirname}/../{basename}.tsx",
        },
        type = "test",
      },
    }

    local typescript = {
      ["*.ts"] = {
        alternate = {
          "{dirname}/__tests__/{basename}.spec.ts",
          "{dirname}/__test__/{basename}.spec.js",
        },
        type = "source",
      },
      ["*.tsx"] = {
        alternate = {
          "{dirname}/__tests__/{basename}.spec.tsx",
          "{dirname}/__tests__/integration.spec.tsx",
          "{dirname}/__test__/{basename}.spec.tsx",
          "{dirname}/__test__/integration.spec.tsx",
        },
        type = "source",
      },
    }

    g.projectionist_heuristics = {
      ["*"] = tablesMerge(rake, rails, javascript, typescript),
    }

    map("", "<leader>aa", ":w <bar> :e <bar> :A<CR>", {})
    map("", "<leader>as", ":w <bar> :e <bar> :AS<CR>", {})
    map("", "<leader>av", ":w <bar> :e <bar> :AV<CR>", {})
    map("", "<leader>at", ":w <bar> :e <bar> :AT<CR>", {})
  end,
}
