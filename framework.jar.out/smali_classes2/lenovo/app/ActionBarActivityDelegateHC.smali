.class Llenovo/app/ActionBarActivityDelegateHC;
.super Llenovo/app/ActionBarActivityDelegateBase;
.source "ActionBarActivityDelegateHC.java"

# interfaces
.implements Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mNativeActionModeAwareLayout:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;-><init>(Landroid/app/Activity;)V

    .line 38
    return-void
.end method


# virtual methods
.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method onSubDecorInstalled()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateHC;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateHC;->mNativeActionModeAwareLayout:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;

    .line 47
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateHC;->mNativeActionModeAwareLayout:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateHC;->mNativeActionModeAwareLayout:Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Lcom/lenovo/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V

    .line 50
    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;

    invoke-direct {v2, v0, p2}, Lcom/lenovo/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v2}, Llenovo/app/ActionBarActivityDelegateHC;->startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    .line 67
    .local v1, "supportActionMode":Llenovo/view/ActionMode;
    if-eqz v1, :cond_0

    .line 69
    new-instance v2, Lcom/lenovo/internal/view/SupportActionModeWrapper;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateHC;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Lcom/lenovo/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Llenovo/view/ActionMode;)V

    .line 71
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
