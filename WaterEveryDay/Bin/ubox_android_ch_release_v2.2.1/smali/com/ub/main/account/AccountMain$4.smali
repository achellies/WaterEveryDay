.class Lcom/ub/main/account/AccountMain$4;
.super Ljava/lang/Object;
.source "AccountMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountMain;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountMain;

.field private final synthetic val$newPsw:Landroid/widget/EditText;

.field private final synthetic val$oldPsw:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountMain;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    iput-object p2, p0, Lcom/ub/main/account/AccountMain$4;->val$oldPsw:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ub/main/account/AccountMain$4;->val$newPsw:Landroid/widget/EditText;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 510
    const-string v5, "old passs"

    iget-object v6, p0, Lcom/ub/main/account/AccountMain$4;->val$oldPsw:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v5, "new passs"

    iget-object v6, p0, Lcom/ub/main/account/AccountMain$4;->val$newPsw:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->val$oldPsw:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, oldpw:Ljava/lang/String;
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    iget-object v6, p0, Lcom/ub/main/account/AccountMain$4;->val$newPsw:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/ub/main/account/AccountMain;->access$0(Lcom/ub/main/account/AccountMain;Ljava/lang/String;)V

    .line 515
    sget-object v5, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    #getter for: Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;
    invoke-static {v5}, Lcom/ub/main/account/AccountMain;->access$1(Lcom/ub/main/account/AccountMain;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    .line 518
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    const-string v6, "\u65b0\u5bc6\u7801\u957f\u5ea6\u81f3\u5c11\u4e3a6\u4f4d\uff01"

    invoke-static {v5, v6}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mShowing"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 526
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 531
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    iget-object v5, v5, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "^[0-9a-zA-Z]{6,20}$"

    iget-object v6, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    #getter for: Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;
    invoke-static {v6}, Lcom/ub/main/account/AccountMain;->access$1(Lcom/ub/main/account/AccountMain;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ub/main/util/Tool;->matchingText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 540
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mShowing"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 541
    .restart local v1       #field:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 543
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_1
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    const-string v6, "\u5bc6\u7801\u53ea\u80fd\u8f93\u51656~20\u4f4d\u7684\u5b57\u7b26\uff0c\u53ef\u5305\u542b\u6570\u5b57\u3001\u5927\u5c0f\u5199\u5b57\u6bcd\uff01"

    invoke-static {v5, v6}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :catch_1
    move-exception v0

    .line 545
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    iget-object v5, v5, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 551
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lcom/ub/main/net/HttpHandler;

    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    invoke-virtual {v5}, Lcom/ub/main/account/AccountMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    invoke-direct {v2, v5, v6}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 552
    .local v2, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v3, Lcom/ub/main/net/HttpStack;

    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    invoke-virtual {v5}, Lcom/ub/main/account/AccountMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->MODIFY_PASSWORD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 553
    iget-object v7, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    #getter for: Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;
    invoke-static {v7}, Lcom/ub/main/account/AccountMain;->access$1(Lcom/ub/main/account/AccountMain;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/ub/main/util/NetConfig;->createChangePasswordString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 552
    invoke-direct {v3, v5, v6, v7, v2}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 555
    .local v3, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v3}, Lcom/ub/main/net/HttpStack;->start()V

    .line 558
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mShowing"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 559
    .restart local v1       #field:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 561
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 562
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_2
    move-exception v0

    .line 563
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 564
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    iget-object v5, v5, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 570
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #httpHandler:Lcom/ub/main/net/HttpHandler;
    .end local v3           #httpStack:Lcom/ub/main/net/HttpStack;
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mShowing"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 571
    .restart local v1       #field:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 573
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 580
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_2
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    const-string v6, "\u60a8\u8f93\u5165\u7684\u539f\u5bc6\u7801\u4e0d\u6b63\u786e\uff0c\u8bf7\u91cd\u65b0\u4fee\u6539!"

    invoke-static {v5, v6}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 581
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->val$oldPsw:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->val$newPsw:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 574
    :catch_3
    move-exception v0

    .line 575
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    iget-object v5, p0, Lcom/ub/main/account/AccountMain$4;->this$0:Lcom/ub/main/account/AccountMain;

    iget-object v5, v5, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
