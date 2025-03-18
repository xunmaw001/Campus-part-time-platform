const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm7plgu/",
            name: "ssm7plgu",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm7plgu/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "校园兼职平台"
        } 
    }
}
export default base
