.class public Lcom/apns/APNSMessage;
.super Ljava/lang/Object;
.source "APNSMessage.java"


# static fields
.field public static final M_START_FLAG:B = 0x5t

.field public static final M_TYPE_ACK:B = 0x2t

.field public static final M_TYPE_AUTH:B = 0x3t

.field public static final M_TYPE_ECHO:B = 0x5t

.field public static final M_TYPE_ONLINE:B = 0x7t

.field public static final M_TYPE_PING:B = 0x6t

.field public static final M_TYPE_PUSH:B = 0x0t

.field public static final M_TYPE_SEND:B = 0x1t


# instance fields
.field private _content:Ljava/lang/String;

.field private _type:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "content"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-byte p1, p0, Lcom/apns/APNSMessage;->_type:B

    .line 29
    iput-object p2, p0, Lcom/apns/APNSMessage;->_content:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/apns/APNSMessage;->_content:Ljava/lang/String;

    return-object v0
.end method

.method public getPackSz()I
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcom/apns/APNSMessage;->_content:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/apns/APNSMessage;->_content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x4

    .line 37
    .local v0, sz:I
    goto :goto_0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 17
    iget-byte v0, p0, Lcom/apns/APNSMessage;->_type:B

    return v0
.end method

.method public pack([B)V
    .locals 5
    .parameter "buff"

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v2, p0, Lcom/apns/APNSMessage;->_content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 42
    .local v0, sz:I
    const/4 v2, 0x5

    aput-byte v2, p1, v4

    .line 43
    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 44
    const/4 v2, 0x2

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 45
    const/4 v2, 0x3

    iget-byte v3, p0, Lcom/apns/APNSMessage;->_type:B

    aput-byte v3, p1, v2

    .line 46
    iget-object v2, p0, Lcom/apns/APNSMessage;->_content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 47
    .local v1, tmp:[B
    const/4 v2, 0x4

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method
