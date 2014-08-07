.class public Lcom/ub/main/util/alipay/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private connectTimeout:I

.field mContext:Landroid/content/Context;

.field mProxy:Ljava/net/Proxy;

.field private readTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/16 v0, 0x7530

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/ub/main/util/alipay/NetworkManager;->connectTimeout:I

    .line 35
    iput v0, p0, Lcom/ub/main/util/alipay/NetworkManager;->readTimeout:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/util/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    .line 41
    iput-object p1, p0, Lcom/ub/main/util/alipay/NetworkManager;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/ub/main/util/alipay/NetworkManager;->setDefaultHostnameVerifier()V

    .line 43
    return-void
.end method

.method private setDefaultHostnameVerifier()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/ub/main/util/alipay/NetworkManager$1;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/NetworkManager$1;-><init>(Lcom/ub/main/util/alipay/NetworkManager;)V

    .line 72
    .local v0, hv:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 73
    return-void
.end method


# virtual methods
.method public SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "strReqData"
    .parameter "strUrl"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/ub/main/util/alipay/NetworkManager;->detectProxy()V

    .line 80
    const/4 v7, 0x0

    .line 81
    .local v7, strResponse:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v6, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "requestData"

    invoke-direct {v9, v10, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v3, 0x0

    .line 89
    .local v3, httpConnect:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "utf-8"

    invoke-direct {v5, v6, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 90
    .local v5, p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    .local v8, url:Ljava/net/URL;
    iget-object v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz v9, :cond_0

    .line 94
    iget-object v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 100
    :goto_0
    iget v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->connectTimeout:I

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    iget v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->readTimeout:I

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 102
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 103
    const-string v9, "Content-type"

    const-string v10, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v3, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 107
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 108
    .local v4, os:Ljava/io/OutputStream;
    invoke-virtual {v5, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 111
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 112
    .local v1, content:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/ub/main/util/alipay/BaseHelper;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 113
    const-string v9, "NetworkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ub/main/util/alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    .end local v1           #content:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v8           #url:Ljava/net/URL;
    :goto_1
    return-object v7

    .line 98
    .restart local v5       #p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v8       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    .end local v5           #p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 121
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    throw v9
.end method

.method public detectProxy()V
    .locals 7

    .prologue
    .line 47
    iget-object v5, p0, Lcom/ub/main/util/alipay/NetworkManager;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 49
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 51
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, proxyHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 53
    .local v2, port:I
    if-eqz v3, :cond_0

    .line 55
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 56
    .local v4, sa:Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v5, p0, Lcom/ub/main/util/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    .line 59
    .end local v2           #port:I
    .end local v3           #proxyHost:Ljava/lang/String;
    .end local v4           #sa:Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method public urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "strurl"
    .parameter "path"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/ub/main/util/alipay/NetworkManager;->detectProxy()V

    .line 136
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    .local v8, url:Ljava/net/URL;
    const/4 v1, 0x0

    .line 138
    .local v1, conn:Ljava/net/HttpURLConnection;
    iget-object v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz v9, :cond_0

    .line 140
    iget-object v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 146
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    :goto_0
    iget v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->connectTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 147
    iget v9, p0, Lcom/ub/main/util/alipay/NetworkManager;->readTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 148
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 150
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 151
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 154
    .local v6, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 156
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v7, v9, [B

    .line 159
    .local v7, temp:[B
    const/4 v5, 0x0

    .line 160
    .local v5, i:I
    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_1

    .line 165
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 168
    const/4 v0, 0x1

    .line 176
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #i:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #temp:[B
    .end local v8           #url:Ljava/net/URL;
    :goto_2
    return v0

    .line 144
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v8       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 162
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #i:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #temp:[B
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 171
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #i:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #temp:[B
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 173
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
