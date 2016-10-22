.class public Lcom/lenovo/settings/TextViewGoTips;
.super Landroid/widget/TextView;
.source "TextViewGoTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    const v0, 0x7f0c0444

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/TextViewGoTips;->setText(I)V

    .line 38
    invoke-virtual {p0, p0}, Lcom/lenovo/settings/TextViewGoTips;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const v0, 0x7f0c0444

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/TextViewGoTips;->setText(I)V

    .line 31
    invoke-virtual {p0, p0}, Lcom/lenovo/settings/TextViewGoTips;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const v0, 0x7f0c0444

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/TextViewGoTips;->setText(I)V

    .line 24
    invoke-virtual {p0, p0}, Lcom/lenovo/settings/TextViewGoTips;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    const v0, 0x7f0c0444

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/TextViewGoTips;->setText(I)V

    .line 17
    invoke-virtual {p0, p0}, Lcom/lenovo/settings/TextViewGoTips;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.lenovo.settings.TipsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/lenovo/settings/TextViewGoTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
