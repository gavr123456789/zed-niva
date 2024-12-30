// use std::path::Path;
use zed::LanguageServerId;
use zed_extension_api::{self as zed, Result};

struct NivaExtension;

impl zed::Extension for NivaExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        // let niva_path = Path::new("/home/gavr/.niva/niva/bin/niva");
        // if !niva_path.exists() {
        //     eprintln!("Error: niva language server binary not found");
        //     std::process::exit(1);
        // }
        // let x = niva_path.to_str().unwrap_or("").to_string()

        let path = worktree
            .which("nivals")
            .ok_or_else(|| "niva must be installed and available on your $PATH".to_string())?;
        Ok(zed::Command {
            command: path,
            args: vec![],
            env: Default::default(),
        })
    }
}

zed::register_extension!(NivaExtension);
