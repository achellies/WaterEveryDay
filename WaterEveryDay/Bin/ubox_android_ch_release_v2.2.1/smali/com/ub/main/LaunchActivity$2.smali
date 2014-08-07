.class Lcom/ub/main/LaunchActivity$2;
.super Landroid/os/Handler;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/ub/main/LaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/LaunchActivity$2;->this$0:Lcom/ub/main/LaunchActivity;

    .line 450
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$2;->this$0:Lcom/ub/main/LaunchActivity;

    #calls: Lcom/ub/main/LaunchActivity;->autoLogin()V
    invoke-static {v0}, Lcom/ub/main/LaunchActivity;->access$4(Lcom/ub/main/LaunchActivity;)V

    .line 455
    return-void
.end method
