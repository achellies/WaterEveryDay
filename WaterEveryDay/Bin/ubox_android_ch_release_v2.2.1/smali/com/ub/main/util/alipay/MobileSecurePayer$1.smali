.class Lcom/ub/main/util/alipay/MobileSecurePayer$1;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/util/alipay/MobileSecurePayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;


# direct methods
.method constructor <init>(Lcom/ub/main/util/alipay/MobileSecurePayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/util/alipay/MobileSecurePayer$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;

    iget-object v1, v0, Lcom/ub/main/util/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    iput-object v2, v0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 42
    iget-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;

    iget-object v0, v0, Lcom/ub/main/util/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 39
    monitor-exit v1

    .line 44
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayer$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ub/main/util/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 49
    return-void
.end method
