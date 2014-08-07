.class Lcom/ub/main/LaunchActivity$4;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/LaunchActivity;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/LaunchActivity;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ub/main/LaunchActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/LaunchActivity$4;->this$0:Lcom/ub/main/LaunchActivity;

    iput-object p2, p0, Lcom/ub/main/LaunchActivity$4;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/ub/main/LaunchActivity$4;->val$json:Lorg/json/JSONObject;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 369
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$4;->val$code:Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$4;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/LaunchActivity;->access$6(Lcom/ub/main/LaunchActivity;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$4;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/LaunchActivity;->access$7(Lcom/ub/main/LaunchActivity;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$4;->val$json:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v1

    sput-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$4;->this$0:Lcom/ub/main/LaunchActivity;

    const-class v2, Lcom/ub/main/Hall;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;I)V

    .line 382
    :goto_1
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v1, p0, Lcom/ub/main/LaunchActivity$4;->this$0:Lcom/ub/main/LaunchActivity;

    const-class v2, Lcom/ub/main/login/LoginUI;

    invoke-static {v1, v2}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1
.end method
