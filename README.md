# web监听器

### 监听三个作用域的创建和销毁(pageContext除外)

    request         HttpServletRequest      ServletRequestListener
    session         HttpSession             HttpSessionListener
    application     ServletContext          ServletContextListener
    
### 监听三个作用域属性状态变更(往作用域里面存取值)

    pageContext     PageContext
    request         HttpServletRequest      ServletRequestAttributeListener
    session         HttpSession             HttpSessionAttributeListener
    application     ServletContext          ServletContextAttributeListener

### 监听HttpSession里面存值的状态变更(不用注册，是因为实现到了Bean身上)

    HttpSessionBindingListener      # 监测Session和对象的绑定和解绑,对象要实现该接口 
    HttpSessionActivationListener   #监测Session的值是钝化(序列化)还是活化(反序列化),对象处理实现该接口外还要实现Serializable接口
    # 钝化存放在tomcat/work/Catalina/localhost/Listener目录下
    
# 活化、钝化配置

    1、在tomcat里面conf/context.xml里面配置
            对所有运行在这个服务器的项目生效
    2、在conf/Catalina/localhost/context.xml里面配置
            对localhsot域名生效 localhost:8080
            使用其它域名访问无效
    3、在Web工程项目中的 META-INF/context.xml里面配置
            只对当前工程生效
    
    <Context>
        <Manager className="org.apache.catalina.session.PersistentManager" maxIdleSwap="1">
            <Store className="org.apache.catalina.session.FileStore" directory="xyz"/>
        </Manager>
    </Context>
    
    maxIdleSwap：1分钟不用就钝化
    directory：钝化后的SESSION文件存放目录