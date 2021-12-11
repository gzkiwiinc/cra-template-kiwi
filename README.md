# cra-template-kiwi

这是一个`React Typescript`模板，配合[Create React App](https://github.com/facebook/create-react-app)使用，`create-react-app`版本`3.3.0`以上（搭建该模板使用的`4.0.3`）

## 使用

```sh
npx create-react-app [app-name] --template kiwi
cd [app-name]
yarn bootstrap // 更新tsconfig.json
```

## 部署
更改`package.json`中的version，然后执行`npm publish`即可将[cra-template-kiwi](https://www.npmjs.com/package/cra-template-kiwi-test)部署到npm上
```
npm publish
```

## 调试

调试时可以将`package.json`中的name改成`cra-template-kiwi-test`，version改成大于[cra-template-kiwi-test npm线上版本](https://www.npmjs.com/package/cra-template-kiwi-test)，然后执行`npm publish`暂时部署到`cra-template-kiwi-test`，然后将create-react-app的template参数设置成`kiwi-test`(如下)
```
npx create-react-app my-app --template kiwi-test
```

# 模板搭建笔记

## 项目工程化搭建过程看[这里](./README_FOR_TEMPLATE.md)

## 目录结构
该模板参考[create-react-app](https://github.com/facebook/create-react-app)官方提供的[Custom Templates](https://create-react-app.dev/docs/custom-templates)搭建，一些必要文件说明可以看[Custom Templates](https://create-react-app.dev/docs/custom-templates)说明。

### 以下文件是必须的
最终的模板会是`cra-template-kiwi/template`中的内容，其中`gitignore`会被转换成`.gitignore`，`package.json`则根据`cra-template-kiwi/template.json`生成

```
cra-template-kiwi/
  README.md (for npm)
  template.json
  package.json
  template/
    README.md (for projects created from this template)
    gitignore
    public/
      index.html
    src/
      index.tsx
```

### tsconfig会被覆盖
下面是tsconfig的默认操作

```
The following changes are being made to your tsconfig.json file:
  - compilerOptions.allowJs to be suggested value: true (this can be changed)
  - compilerOptions.esModuleInterop to be suggested value: true (this can be changed)
  - compilerOptions.forceConsistentCasingInFileNames to be suggested value: true (this can be changed)
  - compilerOptions.noFallthroughCasesInSwitch to be suggested value: true (this can be changed)
  - compilerOptions.module must be esnext (for import() and import/export)
  - compilerOptions.resolveJsonModule must be true (to match webpack loader)
  - compilerOptions.isolatedModules must be true (implementation limitation)
  - compilerOptions.noEmit must be true
  - compilerOptions.jsx must be react-jsx (to support the new JSX transform in React 17)
  - compilerOptions.paths must not be set (aliased imports are not supported)
  - include should be src
```

这是`create-react-app`为了配合`react-script`所做的限制（原因可以看[这篇文章](https://zhuanlan.zhihu.com/p/315220794)），但是本模板的启动脚本时自定义的，需要对tsconfig进行修改，具体解决办法是使用create-react-app创建完项目后运行`yarn bootstrap`，该命令会将template将项目的`tsconfig.json`替换成`scripts/config/tsconfig-custom.json`中的内容
