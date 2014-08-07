.class public final enum Lcom/ub/main/net/IHttpObserver$HttpErrorCode;
.super Ljava/lang/Enum;
.source "IHttpObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/net/IHttpObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ub/main/net/IHttpObserver$HttpErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISMISS_DIALOG:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

.field private static final synthetic ENUM$VALUES:[Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

.field public static final enum Net_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

.field public static final enum Parse_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

.field public static final enum Process_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

.field public static final enum TimeOut_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    const-string v1, "Net_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Net_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    .line 17
    new-instance v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    const-string v1, "Parse_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Parse_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    .line 18
    new-instance v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    const-string v1, "Process_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Process_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    .line 19
    new-instance v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    const-string v1, "TimeOut_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->TimeOut_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    .line 24
    new-instance v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    const-string v1, "DISMISS_DIALOG"

    invoke-direct {v0, v1, v6}, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->DISMISS_DIALOG:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    sget-object v1, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Net_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Parse_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Process_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->TimeOut_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->DISMISS_DIALOG:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->ENUM$VALUES:[Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ub/main/net/IHttpObserver$HttpErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/ub/main/net/IHttpObserver$HttpErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->ENUM$VALUES:[Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
