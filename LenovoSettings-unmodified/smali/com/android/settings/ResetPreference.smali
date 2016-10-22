.class public Lcom/android/settings/ResetPreference;
.super Landroid/preference/Preference;
.source "ResetPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PrivacySettings"


# instance fields
.field mContext:Landroid/content/Context;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/ResetPreference;->mTitle:Ljava/lang/CharSequence;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/ResetPreference;->mSummary:Ljava/lang/CharSequence;

    .line 50
    iput-object p1, p0, Lcom/android/settings/ResetPreference;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "PrivacySettings"

    const-string v1, "Reset Preference"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const v0, 0x7f04005c

    invoke-virtual {p0, v0}, Lcom/android/settings/ResetPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/ResetPreference;->mTitle:Ljava/lang/CharSequence;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/ResetPreference;->mSummary:Ljava/lang/CharSequence;

    .line 57
    iput-object p1, p0, Lcom/android/settings/ResetPreference;->mContext:Landroid/content/Context;

    .line 58
    const-string v0, "PrivacySettings"

    const-string v1, "construct Reset Preferenc"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const v0, 0x7f04005c

    invoke-virtual {p0, v0}, Lcom/android/settings/ResetPreference;->setLayoutResource(I)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetPreference;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/ResetPreference;->resetMenuOrder()V

    return-void
.end method

.method private resetMenuOrder()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ResetPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c044e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c044b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c044f

    new-instance v2, Lcom/android/settings/ResetPreference$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetPreference$3;-><init>(Lcom/android/settings/ResetPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/ResetPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/ResetPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ResetPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ResetPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/android/settings/ResetPreference;->mPreferenceTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/ResetPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetPreference$1;-><init>(Lcom/android/settings/ResetPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/ResetPreference;->mPreferenceSummary:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/ResetPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetPreference$2;-><init>(Lcom/android/settings/ResetPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/ResetPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/ResetPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/ResetPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/ResetPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    return-object v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 106
    const-string v0, "PrivacySettings"

    const-string v1, "onClick reset. "

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ResetPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c044e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c044b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c044f

    new-instance v2, Lcom/android/settings/ResetPreference$4;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetPreference$4;-><init>(Lcom/android/settings/ResetPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 191
    const-string v0, "PrivacySettings"

    const-string v1, " click view"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/settings/ResetPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ResetPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 14
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    .line 148
    iput-object p1, p0, Lcom/android/settings/ResetPreference;->mSummary:Ljava/lang/CharSequence;

    .line 149
    iget-object v11, p0, Lcom/android/settings/ResetPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v11, :cond_0

    .line 150
    const-string v10, "PrivacySettings"

    const-string v11, "Reset Preference setSummary --- exit"

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v11, p0, Lcom/android/settings/ResetPreference;->mPreferenceSummary:Landroid/widget/TextView;

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    instance-of v11, p1, Landroid/text/Spanned;

    if-eqz v11, :cond_2

    .line 156
    const-string v11, "PrivacySettings"

    const-string v12, "span----"

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v11, p0, Lcom/android/settings/ResetPreference;->mPreferenceSummary:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object v7, p1

    .line 158
    check-cast v7, Landroid/text/Spanned;

    .line 159
    .local v7, "sp":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 160
    .local v3, "end":I
    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v7, v10, v3, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 161
    .local v9, "urls":[Landroid/text/style/URLSpan;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 162
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 163
    new-instance v2, Lcom/android/settings/ResetPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetPreference$5;-><init>(Lcom/android/settings/ResetPreference;)V

    .line 173
    .local v2, "click":Landroid/text/style/ClickableSpan;
    move-object v0, v9

    .local v0, "arr$":[Landroid/text/style/URLSpan;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v8, v0, v5

    .line 174
    .local v8, "url":Landroid/text/style/URLSpan;
    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v1, v2, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    .end local v8    # "url":Landroid/text/style/URLSpan;
    :cond_1
    iget-object v11, p0, Lcom/android/settings/ResetPreference;->mPreferenceSummary:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v0    # "arr$":[Landroid/text/style/URLSpan;
    .end local v1    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v2    # "click":Landroid/text/style/ClickableSpan;
    .end local v3    # "end":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v9    # "urls":[Landroid/text/style/URLSpan;
    :cond_2
    iget-object v11, p0, Lcom/android/settings/ResetPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/ResetPreference;->mSummary:Ljava/lang/CharSequence;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 180
    .local v4, "hideSummary":Z
    :goto_2
    iget-object v11, p0, Lcom/android/settings/ResetPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    const/16 v10, 0x8

    :cond_4
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v4    # "hideSummary":Z
    :cond_5
    move v4, v10

    .line 179
    goto :goto_2
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/ResetPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ResetPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/ResetPreference;->mTitle:Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p0, Lcom/android/settings/ResetPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ResetPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
