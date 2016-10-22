.class public Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;
.super Landroid/preference/DialogPreference;
.source "AccessibilityEnableScriptInjectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;
    }
.end annotation


# instance fields
.field private mInjectionAllowed:Z

.field private mSendClickAccessibilityEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    .line 46
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 72
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 74
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 79
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    .line 80
    return-void
.end method

.method private setSystemSetting(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    return-void
.end method

.method private updateSummary()V
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public isInjectionAllowed()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 63
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "summaryView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method protected onClick()V
    .locals 8

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->isInjectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c009b

    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0923

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 123
    if-eqz p1, :cond_0

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 151
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 148
    check-cast v0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;

    .line 149
    .local v0, "myState":Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;
    invoke-virtual {v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 150
    # getter for: Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;->access$000(Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 134
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 137
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 138
    .local v0, "myState":Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;
    iget-boolean v2, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    # setter for: Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {v0, v2}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;->access$002(Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference$SavedState;Z)Z

    move-object v1, v0

    .line 139
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 118
    return-void

    .line 115
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setInjectionAllowed(Z)V
    .locals 1
    .param p1, "injectionAllowed"    # Z

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eq v0, p1, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->persistBoolean(Z)Z

    .line 52
    invoke-direct {p0}, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    .line 54
    :cond_0
    return-void
.end method
