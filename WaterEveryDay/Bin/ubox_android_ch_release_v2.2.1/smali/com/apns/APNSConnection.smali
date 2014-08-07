.class public Lcom/apns/APNSConnection;
.super Ljava/lang/Object;
.source "APNSConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private _agent:Lcom/apns/APNSAgent;

.field private _hostName:Ljava/lang/String;

.field private _in:Ljava/io/DataInputStream;

.field private _out:Ljava/io/DataOutputStream;

.field private _port:I

.field private _running:Z

.field private _sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "host"
    .parameter "port"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apns/APNSConnection;->_running:Z

    .line 34
    iput-object p1, p0, Lcom/apns/APNSConnection;->_hostName:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/apns/APNSConnection;->_port:I

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/apns/APNSConnection;->_running:Z

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 56
    iget-object v1, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V

    .line 57
    iget-object v1, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iput-object v4, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    .line 63
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APNSConnection.close():Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    iput-object v4, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 61
    iput-object v4, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    .line 62
    throw v1
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connecting to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apns/APNSConnection;->_hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/apns/APNSConnection;->_port:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    .line 43
    iget-object v0, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/apns/APNSConnection;->_hostName:Ljava/lang/String;

    iget v3, p0, Lcom/apns/APNSConnection;->_port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 45
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/apns/APNSConnection;->_in:Ljava/io/DataInputStream;

    .line 46
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/apns/APNSConnection;->_out:Ljava/io/DataOutputStream;

    .line 47
    iget-object v0, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    invoke-virtual {v0}, Lcom/apns/APNSAgent;->onConnected()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apns/APNSConnection;->_running:Z

    .line 49
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method public isConnected()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    iget-object v0, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/apns/APNSConnection;->_sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    const/16 v10, 0x200

    .line 66
    new-array v0, v10, [B

    .line 67
    .local v0, buffer:[B
    new-array v8, v10, [B

    .line 68
    .local v8, tmp:[B
    const/4 v9, 0x0

    .line 71
    .local v9, tmp_offset:I
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v10, p0, Lcom/apns/APNSConnection;->_running:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_2

    .line 122
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/apns/APNSConnection;->close()V

    .line 123
    iget-object v10, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    const-string v11, "socket closed"

    invoke-virtual {v10, v11}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 124
    iget-object v10, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    invoke-virtual {v10}, Lcom/apns/APNSAgent;->onDisconnect()V

    .line 125
    return-void

    .line 72
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/apns/APNSConnection;->_in:Ljava/io/DataInputStream;

    invoke-virtual {v10, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    .line 73
    .local v7, n:I
    iget-object v10, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "received data,length:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 74
    if-lez v7, :cond_1

    .line 78
    const/4 v5, -0x1

    .line 79
    .local v5, mStart:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-lt v2, v7, :cond_3

    .line 114
    const/4 v10, -0x1

    if-ne v5, v10, :cond_0

    if-lez v7, :cond_0

    .line 115
    const/4 v10, 0x0

    invoke-static {v8, v9, v0, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    add-int/2addr v9, v7

    goto :goto_0

    .line 80
    :cond_3
    aget-byte v10, v0, v2

    const/4 v11, 0x5

    if-ne v10, v11, :cond_4

    .line 81
    move v5, v2

    .line 82
    if-eqz v2, :cond_5

    if-lez v9, :cond_5

    .line 83
    const/4 v10, 0x0

    invoke-static {v0, v10, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    new-instance v4, Lcom/apns/APNSMessage;

    const/4 v10, 0x0

    aget-byte v10, v8, v10

    new-instance v11, Ljava/lang/String;

    .line 85
    const/4 v12, 0x1

    add-int v13, v9, v2

    invoke-direct {v11, v8, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .line 84
    invoke-direct {v4, v10, v11}, Lcom/apns/APNSMessage;-><init>(BLjava/lang/String;)V

    .line 86
    .local v4, m:Lcom/apns/APNSMessage;
    const/4 v9, 0x0

    .line 87
    iget-object v10, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    invoke-virtual {v10, v4}, Lcom/apns/APNSAgent;->onRecvMessage(Lcom/apns/APNSMessage;)V

    .line 79
    .end local v4           #m:Lcom/apns/APNSMessage;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 89
    :cond_5
    add-int/lit8 v10, v2, 0x2

    if-ge v10, v7, :cond_7

    .line 90
    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v0, v10

    shl-int/lit8 v10, v10, 0x8

    .line 91
    add-int/lit8 v11, v2, 0x2

    aget-byte v11, v0, v11

    .line 90
    or-int v6, v10, v11

    .line 92
    .local v6, m_len:I
    add-int/lit8 v10, v2, 0x2

    add-int/2addr v10, v6

    if-ge v10, v7, :cond_6

    .line 93
    new-instance v4, Lcom/apns/APNSMessage;

    .line 94
    add-int/lit8 v10, v2, 0x3

    aget-byte v10, v0, v10

    new-instance v11, Ljava/lang/String;

    .line 95
    add-int/lit8 v12, v2, 0x4

    add-int/lit8 v13, v6, -0x1

    invoke-direct {v11, v0, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .line 93
    invoke-direct {v4, v10, v11}, Lcom/apns/APNSMessage;-><init>(BLjava/lang/String;)V

    .line 96
    .restart local v4       #m:Lcom/apns/APNSMessage;
    iget-object v10, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    const-string v11, "got message"

    invoke-virtual {v10, v11}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 97
    iget-object v10, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    invoke-virtual {v10, v4}, Lcom/apns/APNSAgent;->onRecvMessage(Lcom/apns/APNSMessage;)V

    .line 98
    add-int/lit8 v10, v6, 0x2

    add-int/2addr v2, v10

    goto :goto_3

    .line 100
    .end local v4           #m:Lcom/apns/APNSMessage;
    :cond_6
    sub-int v3, v7, v2

    .line 101
    .local v3, len:I
    invoke-static {v8, v9, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    add-int/2addr v9, v3

    goto :goto_3

    .line 106
    .end local v3           #len:I
    .end local v6           #m_len:I
    :cond_7
    sub-int v3, v7, v2

    .line 107
    .restart local v3       #len:I
    invoke-static {v8, v9, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    add-int/2addr v9, v3

    goto :goto_3

    .line 119
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #mStart:I
    .end local v7           #n:I
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/IOException;
    iget-object v10, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    invoke-virtual {v10, v1}, Lcom/apns/APNSAgent;->onErr(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method protected send(Lcom/apns/APNSMessage;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/apns/APNSMessage;->getPackSz()I

    move-result v2

    .line 129
    .local v2, sz:I
    new-array v0, v2, [B

    .line 130
    .local v0, buff:[B
    invoke-virtual {p1, v0}, Lcom/apns/APNSMessage;->pack([B)V

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/apns/APNSConnection;->_out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    invoke-virtual {v3, v1}, Lcom/apns/APNSAgent;->onErr(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAgent(Lcom/apns/APNSAgent;)V
    .locals 0
    .parameter "agent"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/apns/APNSConnection;->_agent:Lcom/apns/APNSAgent;

    .line 20
    return-void
.end method
