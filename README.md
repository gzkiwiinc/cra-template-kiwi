# cra-template-kiwi

这是一个`React Typescript`模板，配合[Create React App](https://github.com/facebook/create-react-app)使用，`create-react-app`版本`3.3.0`以上（搭建该模板使用的`4.0.3`）

```sh
npx create-react-app my-app --template kiwi

# or

yarn create react-app my-app --template kiwi
```

# 模板搭建笔记

## 目录结构
该模板参考[create-react-app](https://github.com/facebook/create-react-app)官方提供的[Custom Templates](https://create-react-app.dev/docs/custom-templates)搭建，一些必要文件说明可以看[Custom Templates](https://create-react-app.dev/docs/custom-templates)说明。

### 以下文件是必须的
最终的模板会是`cra-template-kiwi/template`中的内容，其中`gitignore`会被转换成`.gitignore`，`package.json`会是`cra-template-kiwi/template.json`和`cra-template-kiwi/package.json`的合并结果，
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

