.class Lcom/android/internal/policy/impl/PhoneWindow$4;
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
    .line 5186
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5189
    const-string v0, "PhoneWindow"

    const-string v1, "[BMW] onCloseFloatingWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5190
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->closeWindow(Landroid/os/IBinder;)V

    .line 5191
    return-void
.end method
