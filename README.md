# Yocto 核心概念與元件

提供一套靈活的工具、metadata 和流程，協助開發人員為嵌入式產品建構專屬的 Linux 系統，不限於 ARM、x86、RISC-V 等架構。其核心是基於原始碼（source-based）進行編譯，透過 BitBake 工具 執行配置與構建任務。 

- BitBake: 建構引擎，負責解析配方（recipes）和設定檔，執行下載、解壓、編譯、打包等任務。
- Metadata (元數據): 告訴 BitBake 如何建構系統的檔案，包含配置文件和配方。
- Recipes (.bb/.bbappend): 配方檔案，定義如何取得原始碼、應用補丁、配置編譯選項及安裝檔案。
- Layers (層): 組織 Metadata 的結構，透過層級劃分功能（如 BSP 層、功能層），便於管理與復用。
- Poky: 參考發行版，一個包含工具鏈、基礎 metadata (OE-Core) 的完整環境，用作開發起點。
- BSP (Board Support Package): 硬體支援層，包含特定板子的驅動、開機載入程式和核心配置。 
