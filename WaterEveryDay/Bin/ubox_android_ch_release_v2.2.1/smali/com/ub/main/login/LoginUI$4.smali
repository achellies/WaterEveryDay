.class Lcom/ub/main/login/LoginUI$4;
.super Ljava/lang/Object;
.source "LoginUI.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/LoginUI;->setClickListener()V
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
    iput-object p1, p0, Lcom/ub/main/login/LoginUI$4;->this$0:Lcom/ub/main/login/LoginUI;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 195
    if-eqz p2, :cond_0

    sget v0, Lcom/ub/main/util/UIConfig;->TRUE:I

    :goto_0
    sput v0, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    .line 196
    return-void

    .line 195
    :cond_0
    sget v0, Lcom/ub/main/util/UIConfig;->FALSE:I

    goto :goto_0
.end method
