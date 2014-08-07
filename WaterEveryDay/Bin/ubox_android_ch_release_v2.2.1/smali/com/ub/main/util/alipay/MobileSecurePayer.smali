.class public Lcom/ub/main/util/alipay/MobileSecurePayer;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field lock:Ljava/lang/Integer;

.field mActivity:Landroid/app/Activity;

.field mAlixPay:Lcom/alipay/android/app/IAlixPay;

.field private mAlixPayConnection:Landroid/content/ServiceConnection;

.field private mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

.field mbPaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "MobileSecurePayer"

    sput-object v0, Lcom/ub/main/util/alipay/MobileSecurePayer;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    .line 28
    iput-object v2, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 29
    iput-boolean v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mbPaying:Z

    .line 31
    iput-object v2, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 33
    new-instance v0, Lcom/ub/main/util/alipay/MobileSecurePayer$1;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/MobileSecurePayer$1;-><init>(Lcom/ub/main/util/alipay/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 122
    new-instance v0, Lcom/ub/main/util/alipay/MobileSecurePayer$2;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/MobileSecurePayer$2;-><init>(Lcom/ub/main/util/alipay/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/util/alipay/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/util/alipay/MobileSecurePayer;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    .locals 4
    .parameter "strOrderInfo"
    .parameter "callback"
    .parameter "myWhat"
    .parameter "activity"

    .prologue
    const/4 v0, 0x1

    .line 55
    iget-boolean v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mbPaying:Z

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 57
    :cond_0
    iput-boolean v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mbPaying:Z

    .line 60
    iput-object p4, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 63
    iget-object v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ub/main/util/alipay/MobileSecurePayer$3;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/ub/main/util/alipay/MobileSecurePayer$3;-><init>(Lcom/ub/main/util/alipay/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
