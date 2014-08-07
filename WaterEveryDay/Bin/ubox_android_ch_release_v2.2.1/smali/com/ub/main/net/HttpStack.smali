.class public Lcom/ub/main/net/HttpStack;
.super Ljava/lang/Thread;
.source "HttpStack.java"


# static fields
.field private static final PREFERRED_APN_URI:Landroid/net/Uri;


# instance fields
.field private _context:Landroid/content/Context;

.field private _hander:Lcom/ub/main/net/HttpHandler;

.field private _isStart:Z

.field private _requestId:I

.field private postCon:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/ub/main/net/HttpStack;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V
    .locals 1
    .parameter "context"
    .parameter "requestID"
    .parameter "postCon"
    .parameter "handler"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    .line 83
    invoke-virtual {p2}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ub/main/net/HttpStack;->_requestId:I

    .line 84
    iget v0, p0, Lcom/ub/main/net/HttpStack;->_requestId:I

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/net/HttpStack;->url:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/ub/main/net/HttpStack;->_context:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    .line 88
    return-void
.end method

.method private static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iURL"

    .prologue
    .line 251
    const-string v3, "http://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 252
    .local v2, start:I
    const-string v3, "/"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 253
    .local v1, end:I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_0

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 256
    :cond_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, domain:Ljava/lang/String;
    return-object v0
.end method

.method private getWapProxy()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-static {}, Lcom/ub/main/net/HttpStack;->isSimulator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v3

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/ub/main/net/HttpStack;->_context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 271
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 272
    .local v9, info:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_0

    .line 273
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, typeName:Ljava/lang/String;
    const-string v0, "wifi"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ub/main/net/HttpStack;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ub/main/net/HttpStack;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 280
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "apn"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 279
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 281
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, apn:Ljava/lang/String;
    const-string v0, "cmnet"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3gnet"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const-string v0, "uninet"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const-string v0, "#777"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "cmwap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    const-string v0, "3gwap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    const-string v0, "uniwap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    const-string v0, "#777"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    :cond_2
    const-string v3, "10.0.0.172:80"

    goto/16 :goto_0
.end method

.method private static final isSimulator()Z
    .locals 4

    .prologue
    .line 307
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v0, model:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 308
    .local v1, product:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static final openConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "url"
    .parameter "proxyURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 212
    const-string v6, "UMP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "proxyURL = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, connection:Ljava/net/HttpURLConnection;
    const-string v6, "http://"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 216
    .local v2, protocolLength:I
    if-eqz p0, :cond_0

    const-string v6, "http://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 220
    :cond_0
    if-eqz p1, :cond_5

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_1
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 223
    .local v1, maohaocha:I
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 224
    .local v4, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 228
    :cond_2
    new-instance v3, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 229
    :goto_1
    invoke-direct {v7, v8, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 228
    invoke-direct {v3, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 230
    .local v3, proxy:Ljava/net/Proxy;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #connection:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 234
    .end local v1           #maohaocha:I
    .end local v3           #proxy:Ljava/net/Proxy;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .restart local v0       #connection:Ljava/net/HttpURLConnection;
    :goto_2
    return-object v0

    .line 225
    .restart local v1       #maohaocha:I
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 232
    .end local v1           #maohaocha:I
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_5
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #connection:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0       #connection:Ljava/net/HttpURLConnection;
    goto :goto_2
.end method

.method public static processGetResponse(Ljava/io/File;Lorg/apache/http/HttpResponse;)Z
    .locals 11
    .parameter "DescFile"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2000

    const/4 v7, 0x0

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/16 v8, 0xc8

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v7

    .line 356
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 358
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 359
    .local v6, parent:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 361
    :cond_3
    new-array v2, v10, [B

    .line 362
    .local v2, buff:[B
    const/4 v5, 0x0

    .line 363
    .local v5, len:I
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 365
    .local v4, fw:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 366
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_6

    .line 368
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    if-eqz v4, :cond_4

    .line 376
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 377
    :cond_4
    if-eqz v1, :cond_5

    .line 378
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 369
    :cond_5
    :goto_2
    const/4 v7, 0x1

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 367
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_6
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v4, v2, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 371
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    if-eqz v4, :cond_7

    .line 376
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 377
    :cond_7
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 379
    :catch_1
    move-exception v3

    .line 380
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v3

    .line 380
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 373
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v7

    .line 375
    :goto_4
    if-eqz v4, :cond_8

    .line 376
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 377
    :cond_8
    if-eqz v0, :cond_9

    .line 378
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 382
    :cond_9
    :goto_5
    throw v7

    .line 379
    :catch_3
    move-exception v3

    .line 380
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 373
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 370
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public static returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "paramString"

    .prologue
    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, localBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 319
    .local v3, picUrl:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    const/4 v3, 0x0

    move-object v2, v1

    .line 331
    .end local v1           #localBitmap:Landroid/graphics/Bitmap;
    .end local v3           #picUrl:Ljava/net/URL;
    .local v2, localBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 328
    .end local v2           #localBitmap:Landroid/graphics/Bitmap;
    .restart local v1       #localBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    .line 331
    .end local v1           #localBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #localBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private sendMsg(Ljava/net/HttpURLConnection;I)V
    .locals 2
    .parameter "httpConnection"
    .parameter "wrongCode"

    .prologue
    .line 199
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 200
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 201
    iget-object v1, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    invoke-virtual {v1, v0}, Lcom/ub/main/net/HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public static writeImageInSDCard(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .parameter "imageURL"
    .parameter "destFile"

    .prologue
    .line 341
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 343
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0}, Lcom/ub/main/util/Tool;->escapeSpecialCharForUrlSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, method:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 345
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-static {p1, v3}, Lcom/ub/main/net/HttpStack;->processGetResponse(Ljava/io/File;Lorg/apache/http/HttpResponse;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 348
    .end local v2           #method:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return v4

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public CancelRequest()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    .line 242
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 94
    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->url:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->url:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    if-nez v11, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v4, 0x0

    .line 98
    .local v4, httpConnection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 101
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ub/main/net/HttpStack;->getWapProxy()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/ub/main/net/HttpStack;->openConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 102
    const-string v11, "X-Online-Host"

    iget-object v12, p0, Lcom/ub/main/net/HttpStack;->url:Ljava/lang/String;

    invoke-static {v12}, Lcom/ub/main/net/HttpStack;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 104
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 105
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 106
    const/16 v11, 0x2710

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    const/16 v11, 0x7530

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 109
    const-string v11, "UMP"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "httpConnection = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 111
    :cond_2
    const-string v11, "GET"

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 134
    :goto_1
    iget-boolean v11, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    if-eqz v11, :cond_3

    .line 135
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 137
    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 138
    .local v8, responseCode:I
    iget-boolean v11, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    if-eqz v11, :cond_a

    const/16 v11, 0xc8

    if-ne v8, v11, :cond_a

    .line 139
    iget-boolean v11, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    if-eqz v11, :cond_4

    .line 140
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 141
    invoke-static {v5}, Lcom/ub/main/util/Tool;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 142
    .local v0, bResponseByteStream:[B
    new-instance v9, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v9, v0, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 144
    .local v9, sResponseContent:Ljava/lang/String;
    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    if-eqz v11, :cond_4

    .line 145
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 146
    .local v6, msg:Landroid/os/Message;
    const/4 v11, 0x0

    iput v11, v6, Landroid/os/Message;->what:I

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v1, bd:Landroid/os/Bundle;
    const-string v11, "requestId"

    iget v12, p0, Lcom/ub/main/net/HttpStack;->_requestId:I

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v11, "jsonString"

    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 151
    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    invoke-virtual {v11, v6}, Lcom/ub/main/net/HttpHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v0           #bResponseByteStream:[B
    .end local v1           #bd:Landroid/os/Bundle;
    .end local v6           #msg:Landroid/os/Message;
    .end local v9           #sResponseContent:Ljava/lang/String;
    :cond_4
    :goto_2
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    .line 171
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_context:Landroid/content/Context;

    .line 172
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    .line 174
    if-eqz v5, :cond_5

    .line 176
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    .line 177
    const/4 v5, 0x0

    .line 182
    :cond_5
    :goto_3
    if-eqz v4, :cond_0

    .line 184
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    .line 185
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 113
    .end local v8           #responseCode:I
    :cond_6
    :try_start_3
    const-string v11, "POST"

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 115
    const-string v11, "Content-Length"

    iget-object v12, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 120
    .local v7, outStream:Ljava/io/OutputStream;
    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 121
    const-string v11, "UMP"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "httpConnection postCon= "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v2, data:Ljava/io/DataOutputStream;
    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 124
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 126
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 130
    .end local v2           #data:Ljava/io/DataOutputStream;
    :cond_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 159
    .end local v7           #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 160
    .local v3, e:Ljava/net/SocketTimeoutException;
    :try_start_4
    iget-boolean v11, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    if-eqz v11, :cond_8

    .line 161
    const/4 v11, -0x3

    invoke-direct {p0, v4, v11}, Lcom/ub/main/net/HttpStack;->sendMsg(Ljava/net/HttpURLConnection;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    :cond_8
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    .line 171
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_context:Landroid/content/Context;

    .line 172
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    .line 174
    if-eqz v5, :cond_9

    .line 176
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 177
    const/4 v5, 0x0

    .line 182
    :cond_9
    :goto_4
    if-eqz v4, :cond_0

    .line 184
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 185
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 155
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    .restart local v8       #responseCode:I
    :cond_a
    :try_start_7
    iget-boolean v11, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    if-eqz v11, :cond_4

    .line 156
    const/4 v11, -0x1

    invoke-direct {p0, v4, v11}, Lcom/ub/main/net/HttpStack;->sendMsg(Ljava/net/HttpURLConnection;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 163
    .end local v8           #responseCode:I
    :catch_1
    move-exception v10

    .line 164
    .local v10, t:Ljava/lang/Throwable;
    :try_start_8
    iget-boolean v11, p0, Lcom/ub/main/net/HttpStack;->_isStart:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    if-eqz v11, :cond_b

    .line 165
    const/4 v11, -0x1

    invoke-direct {p0, v4, v11}, Lcom/ub/main/net/HttpStack;->sendMsg(Ljava/net/HttpURLConnection;I)V

    .line 167
    :cond_b
    const-string v11, "UMP"

    const-string v12, "WebRequest run error "

    invoke-static {v11, v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 170
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    .line 171
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_context:Landroid/content/Context;

    .line 172
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    .line 174
    if-eqz v5, :cond_c

    .line 176
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 177
    const/4 v5, 0x0

    .line 182
    :cond_c
    :goto_5
    if-eqz v4, :cond_0

    .line 184
    :try_start_a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 185
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 178
    .end local v10           #t:Ljava/lang/Throwable;
    .restart local v3       #e:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v10

    .line 179
    .restart local v10       #t:Ljava/lang/Throwable;
    const-string v11, "HttpStack"

    const-string v12, "get is close"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 186
    .end local v10           #t:Ljava/lang/Throwable;
    :catch_3
    move-exception v10

    .line 187
    .restart local v10       #t:Ljava/lang/Throwable;
    const-string v11, "HttpStack"

    const-string v12, "get is close"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 178
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v10

    .line 179
    const-string v11, "HttpStack"

    const-string v12, "get is close"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 186
    :catch_5
    move-exception v10

    .line 187
    const-string v11, "HttpStack"

    const-string v12, "get is close"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 168
    .end local v10           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 170
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_hander:Lcom/ub/main/net/HttpHandler;

    .line 171
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->_context:Landroid/content/Context;

    .line 172
    iput-object v14, p0, Lcom/ub/main/net/HttpStack;->postCon:Ljava/lang/String;

    .line 174
    if-eqz v5, :cond_d

    .line 176
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 177
    const/4 v5, 0x0

    .line 182
    :cond_d
    :goto_6
    if-eqz v4, :cond_e

    .line 184
    :try_start_c
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 185
    const/4 v4, 0x0

    .line 190
    :cond_e
    :goto_7
    throw v11

    .line 178
    :catch_6
    move-exception v10

    .line 179
    .restart local v10       #t:Ljava/lang/Throwable;
    const-string v12, "HttpStack"

    const-string v13, "get is close"

    invoke-static {v12, v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 186
    .end local v10           #t:Ljava/lang/Throwable;
    :catch_7
    move-exception v10

    .line 187
    .restart local v10       #t:Ljava/lang/Throwable;
    const-string v12, "HttpStack"

    const-string v13, "get is close"

    invoke-static {v12, v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 178
    .end local v10           #t:Ljava/lang/Throwable;
    .restart local v8       #responseCode:I
    :catch_8
    move-exception v10

    .line 179
    .restart local v10       #t:Ljava/lang/Throwable;
    const-string v11, "HttpStack"

    const-string v12, "get is close"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 186
    .end local v10           #t:Ljava/lang/Throwable;
    :catch_9
    move-exception v10

    .line 187
    .restart local v10       #t:Ljava/lang/Throwable;
    const-string v11, "HttpStack"

    const-string v12, "get is close"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
