# 目录结构说明
```bash
├── Dockerfile #Dock环境
├── README.md #说明
├── abis #输出合约abi文件,前端和脚本用
├── compile.sh #hardhat 编译合约
├── contracts #逻辑合约都写这里
│   ├── test #测试合约
│   └── utils #工具集
├── deploy-bsctestnet.sh #部署到bsctestnet
├── deploy-configaddress.sh #配置文件部署
├── deploy.sh #带参数部署,默认部署ganache
├── docker-compose-up.sh #启动thegraph本地环境
├── docker-compose.yml #thegraph docker配置
├── findexp #文件查找工具
├── hardhat.config.ts.example #hardhat配置参考
├── init-docker-compose.sh #充值thegraph docker
├── init-subgraph.sh #初始化thegraph
├── init.sh #初始化环境
├── package.json #node配置
├── run-bsctestnet.sh #执行ts脚本
├── run.sh #执行ts脚本
├── scripts #ts脚本都写这里
├── tenderly.sh #tenderly调试发布脚本
├── tenderly.yaml.example #调试发布脚本参考
├── test #mocha单元测试叫本
├── test.sh #指定单个测试脚本文件
└── truffle-config.js.example #truffle配置,因为tenderly需要用truffle
```