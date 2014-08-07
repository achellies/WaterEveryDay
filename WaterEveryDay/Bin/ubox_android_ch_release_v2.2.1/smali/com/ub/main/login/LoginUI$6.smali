.class Lcom/ub/main/login/LoginUI$6;
.super Ljava/lang/Object;
.source "LoginUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/LoginUI;->quit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/LoginUI;


# direct methods
.method constructor <init>(Lcom/ub/main/login/LoginUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/LoginUI$6;->this$0:Lcom/ub/main/login/LoginUI;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ub/main/login/LoginUI$6;->this$0:Lcom/ub/main/login/LoginUI;

    invoke-virtual {v0}, Lcom/ub/main/login/LoginUI;->finish()V

    .line 241
    const/4 v0, 0x0

    sput-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 242
    return-void
.end method
