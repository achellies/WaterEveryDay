.class Lcom/ub/main/util/alipay/MobileSecurePayHelper$1;
.super Landroid/os/Handler;
.source "MobileSecurePayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/util/alipay/MobileSecurePayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/util/alipay/MobileSecurePayHelper;


# direct methods
.method constructor <init>(Lcom/ub/main/util/alipay/MobileSecurePayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayHelper;

    .line 270
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 273
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 284
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 288
    :goto_1
    return-void

    .line 276
    :pswitch_0
    iget-object v2, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayHelper;

    invoke-virtual {v2}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->closeProgress()V

    .line 277
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, cachePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayHelper;

    iget-object v3, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$1;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayHelper;

    iget-object v3, v3, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v0           #cachePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
