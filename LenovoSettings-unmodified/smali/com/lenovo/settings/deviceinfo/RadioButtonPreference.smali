.class public Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
.super Landroid/preference/Preference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUTTON_ID:I = 0x7f0b00e9

.field private static final TAG:Ljava/lang/String; = "RadioButtonPreference"

.field private static final TITLE_ID:I = 0x7f0b00e8


# instance fields
.field private bShouldDisableRadioButton:Z

.field private mChecked:Z

.field private mMountPath:Ljava/lang/String;

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 21
    iput-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mChecked:Z

    .line 23
    iput-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->bShouldDisableRadioButton:Z

    .line 35
    const v0, 0x7f04008d

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setLayoutResource(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "atrributset"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 21
    iput-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mChecked:Z

    .line 23
    iput-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->bShouldDisableRadioButton:Z

    .line 40
    const v0, 0x7f04008d

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public disableRadio()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->bShouldDisableRadioButton:Z

    .line 45
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mMountPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    const-string v1, "RadioButtonPreference"

    const-string v2, "getview"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 54
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 56
    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->bShouldDisableRadioButton:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 57
    :cond_0
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 108
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 109
    const-string v1, "RadioButtonPreference"

    const-string v2, "preference.onClick return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_1
    return-void

    .line 106
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "RadioButtonPreference"

    const-string v2, "preference.onClick"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 90
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 91
    const-string v1, "RadioButtonPreference"

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 88
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "RadioButtonPreference"

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 128
    const-string v1, "RadioButtonPreference"

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iput-boolean p1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mChecked:Z

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 135
    iput-boolean p1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mChecked:Z

    .line 136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mMountPath:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    return-void
.end method
