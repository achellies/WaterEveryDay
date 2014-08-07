.class Lcom/ub/main/util/alipay/MobileSecurePayer$2;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;
.source "MobileSecurePayer.java"


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
    iput-object p1, p0, Lcom/ub/main/util/alipay/MobileSecurePayer$2;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;

    .line 122
    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "packageName"
    .parameter "className"
    .parameter "iCallingPid"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    .local v1, intent:Landroid/content/Intent;
    if-nez p4, :cond_0

    .line 138
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 143
    .restart local p4
    :cond_0
    :try_start_0
    const-string v2, "CallingPid"

    invoke-virtual {p4, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/ub/main/util/alipay/MobileSecurePayer$2;->this$0:Lcom/ub/main/util/alipay/MobileSecurePayer;

    iget-object v2, v2, Lcom/ub/main/util/alipay/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
