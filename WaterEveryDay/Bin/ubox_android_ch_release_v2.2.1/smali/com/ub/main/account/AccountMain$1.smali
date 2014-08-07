.class Lcom/ub/main/account/AccountMain$1;
.super Ljava/lang/Object;
.source "AccountMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountMain;->logOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountMain;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountMain$1;->this$0:Lcom/ub/main/account/AccountMain;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 398
    const/4 v3, 0x1

    .line 400
    .local v3, success:Z
    new-instance v4, Lcom/ub/main/data/UserDataManage;

    iget-object v5, p0, Lcom/ub/main/account/AccountMain$1;->this$0:Lcom/ub/main/account/AccountMain;

    invoke-direct {v4, v5}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    .line 404
    .local v4, us:Lcom/ub/main/data/UserDataManage;
    new-instance v0, Ljava/io/File;

    const-string v5, "data/data/com.ub.main/databases/data"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 409
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v5, "data/data/com.ub.main/databases/uBoxDatabase.db"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 413
    :cond_1
    if-nez v3, :cond_2

    .line 414
    const-string v5, "login out"

    const-string v6, "delete file failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ub/main/util/UIConfig;->SDCARD_DIR:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/ubox/.image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 421
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 422
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_7

    .line 426
    .end local v2           #i:I
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 429
    :cond_4
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ub/main/util/UIConfig;->PRIVATE_DIR:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/ubox/.image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_5

    .line 433
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v5, v1

    if-lt v2, v5, :cond_8

    .line 437
    .end local v2           #i:I
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 441
    :cond_6
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$1;->this$0:Lcom/ub/main/account/AccountMain;

    const-class v6, Lcom/ub/main/login/LoginUI;

    const/16 v7, 0xb

    invoke-static {v5, v6, v7}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;I)V

    .line 442
    const/4 v5, 0x0

    sput-object v5, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 444
    return-void

    .line 423
    .restart local v2       #i:I
    :cond_7
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_8
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
