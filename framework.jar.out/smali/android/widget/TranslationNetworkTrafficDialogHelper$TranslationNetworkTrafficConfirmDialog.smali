.class public final Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
.super Landroid/app/AlertDialog;
.source "TranslationNetworkTrafficDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationNetworkTrafficDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslationNetworkTrafficConfirmDialog"
.end annotation


# instance fields
.field private isPositiveButtonClickedWhenDismiss:Z

.field final synthetic this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;


# direct methods
.method protected constructor <init>(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    .line 115
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->isPositiveButtonClickedWhenDismiss:Z

    .line 116
    invoke-direct {p0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->initDialogContentView()V

    .line 117
    return-void
.end method

.method static synthetic access$502(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->isPositiveButtonClickedWhenDismiss:Z

    return p1
.end method

.method private initDialogContentView()V
    .locals 6

    .prologue
    .line 158
    iget-object v3, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$100(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 159
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    const v3, 0x9040050

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    # setter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialogContentView:Landroid/widget/LinearLayout;
    invoke-static {v4, v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$202(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 160
    iget-object v3, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialogContentView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$200(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x90c0070

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    .local v1, "conTextView":Landroid/widget/TextView;
    iget-object v3, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialogContentView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$200(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x90c0071

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 164
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$100(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x909005e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v3, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$3;

    invoke-direct {v3, p0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$3;-><init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v3, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$600(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$4;

    invoke-direct {v4, p0, v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$4;-><init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method


# virtual methods
.method public getNetworkTrafficWarningDialog()Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialogContentView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$200(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->setView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$100(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x909005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v0, -0x1

    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$100(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x9090060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;

    invoke-direct {v2, p0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;-><init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    const/4 v0, -0x2

    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$100(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x9090061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$2;

    invoke-direct {v2, p0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$2;-><init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    return-object p0
.end method

.method public isPositiveButtonClicked()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->isPositiveButtonClickedWhenDismiss:Z

    return v0
.end method
