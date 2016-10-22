.class Lcom/android/internal/policy/impl/PhoneWindow$5;
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
    .line 5195
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5198
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 5199
    return-void
.end method
