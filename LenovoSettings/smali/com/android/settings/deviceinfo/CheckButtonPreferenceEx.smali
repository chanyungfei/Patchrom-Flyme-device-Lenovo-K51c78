.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;
.super Landroid/preference/Preference;
.source "CheckButtonPreferenceEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHECKBOXBUTTON_ID:I = 0x7f0b0012

.field private static final PROGRESS_ID:I = 0x7f0b00d9

.field private static final RADIOBUTTON_ID:I = 0x7f0b00d7

.field private static final SUMMARY_ID:I = 0x7f0b001a

.field private static final SWITCHBUTTON_ID:I = 0x7f0b00d8

.field private static final TITLE_ID:I = 0x7f0b000f


# instance fields
.field private TAG:Ljava/lang/String;

.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSummaryValue:Ljava/lang/CharSequence;

.field private mSwitchButton:Landroid/widget/Button;

.field private mSwitchOnClick:Landroid/view/View$OnClickListener;

.field private mSwitchShow:Z

.field private mSwitchText:Ljava/lang/String;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 33
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    .line 35
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchOnClick:Landroid/view/View$OnClickListener;

    .line 36
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchText:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    .line 39
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 40
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    .line 42
    const-string v0, "CheckButtonPreferenceEx"

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    .line 45
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setLayoutResource(I)V

    .line 46
    return-void
.end method

.method private updateSwitchStatuc()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 193
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchStatuc mSwitchShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchStatuc mTitleValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchStatus()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "getview"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    .line 53
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 60
    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    .line 61
    const v1, 0x7f0b00d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    .line 62
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->updateSwitchStatuc()V

    .line 64
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 68
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 133
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 135
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "preference.onClick return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_1
    return-void

    .line 133
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "preference.onClick"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 118
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_1
    return-void

    .line 115
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->callChangeListener(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 155
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProgressBar(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 173
    if-eqz p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    return-void
.end method

.method public setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "bShow"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    .line 163
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchOnClick:Landroid/view/View$OnClickListener;

    .line 164
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchText:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitch mSwitchShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitch mTitleValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->updateSwitchStatuc()V

    .line 168
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    return-void
.end method
