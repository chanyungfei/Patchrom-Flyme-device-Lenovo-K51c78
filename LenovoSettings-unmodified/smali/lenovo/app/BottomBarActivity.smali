.class public Llenovo/app/BottomBarActivity;
.super Llenovo/app/ActionBarActivity;
.source "BottomBarActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Llenovo/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    invoke-virtual {p0}, Llenovo/app/BottomBarActivity;->onUserInteraction()V

    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Llenovo/app/BottomBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onSplitMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Llenovo/app/BottomBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/app/ActionBarActivityDelegate;->setSplitNoActionBar(Z)V

    .line 46
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
