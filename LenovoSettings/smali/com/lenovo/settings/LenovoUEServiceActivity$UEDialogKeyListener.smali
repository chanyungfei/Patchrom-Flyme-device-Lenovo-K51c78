.class final Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;
.super Ljava/lang/Object;
.source "LenovoUEServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/LenovoUEServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEDialogKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/LenovoUEServiceActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/LenovoUEServiceActivity;Lcom/lenovo/settings/LenovoUEServiceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/LenovoUEServiceActivity;
    .param p2, "x1"    # Lcom/lenovo/settings/LenovoUEServiceActivity$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;-><init>(Lcom/lenovo/settings/LenovoUEServiceActivity;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 208
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    # invokes: Lcom/lenovo/settings/LenovoUEServiceActivity;->cancelDialog(Landroid/content/DialogInterface;Landroid/content/Context;)V
    invoke-static {p1, v0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->access$100(Landroid/content/DialogInterface;Landroid/content/Context;)V

    .line 211
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
