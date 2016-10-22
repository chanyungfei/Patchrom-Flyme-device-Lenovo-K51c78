.class public Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# instance fields
.field private mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->setLayoutResource(I)V

    .line 45
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    :cond_2
    return-void

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    .line 106
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 110
    if-nez v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 61
    const v0, 0x7f0b00e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    .line 62
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 63
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference$1;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 72
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->onCheckBoxClicked()V

    .line 73
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected onSettingsButtonClicked()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 78
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 79
    return-void
.end method

.method public setFragmentIntent(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "fragment"    # Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    .line 83
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 84
    return-void
.end method
