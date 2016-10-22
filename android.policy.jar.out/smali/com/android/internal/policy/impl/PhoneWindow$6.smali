.class Lcom/android/internal/policy/impl/PhoneWindow$6;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->prepareFloatDecor(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0

    .prologue
    .line 5206
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5210
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3800(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->updateStickView(Z)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    .line 5211
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3800(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->stickWindow(Landroid/os/IBinder;Z)V

    .line 5212
    return-void

    .line 5210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
