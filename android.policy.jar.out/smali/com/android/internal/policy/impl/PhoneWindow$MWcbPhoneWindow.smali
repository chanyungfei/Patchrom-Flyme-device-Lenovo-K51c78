.class public Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;
.super Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWcbPhoneWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0

    .prologue
    .line 5148
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;-><init>()V

    .line 5149
    return-void
.end method


# virtual methods
.method public setFloatDecorVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 5163
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5164
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSticky(Landroid/os/IBinder;)Z

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->updateStickView(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    .line 5168
    return-void
.end method

.method public setWindowType(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "windowType"    # I

    .prologue
    const/4 v1, 0x1

    .line 5153
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-object p1, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mToken:Landroid/os/IBinder;

    .line 5154
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-ne p2, v1, :cond_1

    .line 5155
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindow:Z

    .line 5159
    :cond_0
    :goto_0
    return-void

    .line 5156
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 5157
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowDialog:Z

    goto :goto_0
.end method
