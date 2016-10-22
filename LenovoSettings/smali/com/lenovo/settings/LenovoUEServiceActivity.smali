.class public Lcom/lenovo/settings/LenovoUEServiceActivity;
.super Landroid/app/Activity;
.source "LenovoUEServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;,
        Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;
    }
.end annotation


# static fields
.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final SDK_VERSION_KITKAT:I = 0x13

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUEServiceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic access$100(Landroid/content/DialogInterface;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/DialogInterface;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/lenovo/settings/LenovoUEServiceActivity;->cancelDialog(Landroid/content/DialogInterface;Landroid/content/Context;)V

    return-void
.end method

.method private static final cancelDialog(Landroid/content/DialogInterface;Landroid/content/Context;)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    .line 226
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 227
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 231
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private popupPromotion()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const v12, 0x7f0d0039

    const/high16 v8, 0x41c00000    # 24.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 76
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 77
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x5

    invoke-direct {v1, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c02f0

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v4, v10}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 83
    invoke-direct {p0, v8}, Lcom/lenovo/settings/LenovoUEServiceActivity;->dip2px(F)I

    move-result v6

    invoke-direct {p0, v9}, Lcom/lenovo/settings/LenovoUEServiceActivity;->dip2px(F)I

    move-result v7

    invoke-direct {p0, v8}, Lcom/lenovo/settings/LenovoUEServiceActivity;->dip2px(F)I

    move-result v8

    invoke-direct {p0, v9}, Lcom/lenovo/settings/LenovoUEServiceActivity;->dip2px(F)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 84
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v5, "tvMsg":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c02f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 90
    new-instance v6, Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;

    invoke-direct {v6, p0, v11}, Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;-><init>(Lcom/lenovo/settings/LenovoUEServiceActivity;Lcom/lenovo/settings/LenovoUEServiceActivity$1;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v6, 0x7f0c02ef

    new-instance v7, Lcom/lenovo/settings/LenovoUEServiceActivity$1;

    invoke-direct {v7, p0}, Lcom/lenovo/settings/LenovoUEServiceActivity$1;-><init>(Lcom/lenovo/settings/LenovoUEServiceActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v6, Lcom/lenovo/settings/LenovoUEServiceActivity$2;

    invoke-direct {v6, p0}, Lcom/lenovo/settings/LenovoUEServiceActivity$2;-><init>(Lcom/lenovo/settings/LenovoUEServiceActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    .line 128
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "scrollView":Landroid/widget/ScrollView;
    .end local v5    # "tvMsg":Landroid/widget/TextView;
    :goto_0
    iget-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 129
    iget-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    invoke-direct {p0, v6}, Lcom/lenovo/settings/LenovoUEServiceActivity;->setDialogPostition(Landroid/app/Dialog;)V

    .line 130
    return-void

    .line 115
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p0, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    .line 116
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/lenovo/settings/LenovoUEServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 117
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400b6

    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 118
    .local v3, "layout":Landroid/view/View;
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p0, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    .line 119
    iget-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 120
    iget-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 121
    iget-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 122
    const v6, 0x7f0b0178

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    .local v0, "agreeBtn":Landroid/widget/Button;
    new-instance v6, Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;

    iget-object v7, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    invoke-direct {v6, p0, v7}, Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;-><init>(Lcom/lenovo/settings/LenovoUEServiceActivity;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v6, 0x7f020022

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    iget-object v6, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    new-instance v7, Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;

    invoke-direct {v7, p0, v11}, Lcom/lenovo/settings/LenovoUEServiceActivity$UEDialogKeyListener;-><init>(Lcom/lenovo/settings/LenovoUEServiceActivity;Lcom/lenovo/settings/LenovoUEServiceActivity$1;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0
.end method

.method private setDialogPostition(Landroid/app/Dialog;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 135
    .local v0, "d":Landroid/view/Display;
    sget-object v4, Lcom/lenovo/settings/LenovoUEServiceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d.getWidth(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v4, Lcom/lenovo/settings/LenovoUEServiceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d.getHeight(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 138
    .local v3, "max":I
    :goto_0
    sget-object v4, Lcom/lenovo/settings/LenovoUEServiceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 141
    .local v1, "dialogWindow":Landroid/view/Window;
    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Landroid/view/Window;->setGravity(I)V

    .line 142
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 143
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    div-int/lit8 v4, v3, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    sget-object v4, Lcom/lenovo/settings/LenovoUEServiceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.width(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v4, Lcom/lenovo/settings/LenovoUEServiceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.height(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 148
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x32

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 149
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 150
    return-void

    .line 137
    .end local v1    # "dialogWindow":Landroid/view/Window;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "max":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, 0x4000000

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 59
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 62
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/LenovoUEServiceActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->popupPromotion()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lenovo/settings/LenovoUEServiceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 72
    :cond_0
    return-void
.end method
