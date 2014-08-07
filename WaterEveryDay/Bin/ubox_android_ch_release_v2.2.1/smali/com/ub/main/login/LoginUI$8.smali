.class Lcom/ub/main/login/LoginUI$8;
.super Ljava/lang/Object;
.source "LoginUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/LoginUI;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/LoginUI;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$json:Lorg/json/JSONObject;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ub/main/login/LoginUI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    iput-object p2, p0, Lcom/ub/main/login/LoginUI$8;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/ub/main/login/LoginUI$8;->val$json:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ub/main/login/LoginUI$8;->val$msg:Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 267
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->val$code:Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/login/LoginUI;->access$4(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/login/LoginUI;->access$5(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->val$json:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v2

    sput-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    sget v2, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    sget v3, Lcom/ub/main/util/UIConfig;->TRUE:I

    if-ne v2, v3, :cond_0

    .line 277
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    new-instance v3, Lcom/ub/main/data/UserDataManage;

    iget-object v4, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    invoke-direct {v3, v4}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;
    invoke-static {v2, v3}, Lcom/ub/main/login/LoginUI;->access$7(Lcom/ub/main/login/LoginUI;Lcom/ub/main/data/UserDataManage;)V

    .line 278
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->userDataManage:Lcom/ub/main/data/UserDataManage;
    invoke-static {v2}, Lcom/ub/main/login/LoginUI;->access$8(Lcom/ub/main/login/LoginUI;)Lcom/ub/main/data/UserDataManage;

    move-result-object v2

    iget-object v3, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/ub/main/login/LoginUI;->access$4(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    #getter for: Lcom/ub/main/login/LoginUI;->userpwd:Ljava/lang/String;
    invoke-static {v4}, Lcom/ub/main/login/LoginUI;->access$5(Lcom/ub/main/login/LoginUI;)Ljava/lang/String;

    move-result-object v4

    .line 279
    sget v5, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    sget v6, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ub/main/data/UserDataManage;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    const-class v3, Lcom/ub/main/Hall;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 284
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    const-string v2, "loginGoto"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    invoke-virtual {v2, v1}, Lcom/ub/main/login/LoginUI;->startActivity(Landroid/content/Intent;)V

    .line 287
    iget-object v2, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    invoke-virtual {v2}, Lcom/ub/main/login/LoginUI;->finish()V

    .line 298
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ub/main/login/LoginUI$8;->this$0:Lcom/ub/main/login/LoginUI;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/ub/main/login/LoginUI$8;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 292
    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ub/main/login/LoginUI$8$1;

    invoke-direct {v4, p0}, Lcom/ub/main/login/LoginUI$8$1;-><init>(Lcom/ub/main/login/LoginUI$8;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
