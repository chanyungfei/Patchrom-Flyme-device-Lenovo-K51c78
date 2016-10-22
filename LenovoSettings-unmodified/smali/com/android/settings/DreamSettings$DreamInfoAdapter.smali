.class Lcom/android/settings/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 336
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 337
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Lcom/android/settings/DreamBackend$DreamInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    .param p1, "x1"    # Lcom/android/settings/DreamBackend$DreamInfo;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settings/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private activate(Lcom/android/settings/DreamBackend$DreamInfo;)V
    .locals 3
    .param p1, "dreamInfo"    # Lcom/android/settings/DreamBackend$DreamInfo;

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    .line 435
    iget-object v1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    # getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040036

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 406
    .local v1, "row":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, "header":Landroid/view/View;
    new-instance v2, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-object v1
.end method

.method private getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;
    .locals 3

    .prologue
    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 422
    invoke-virtual {p0, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    .line 423
    .local v0, "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    iget-boolean v2, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 426
    .end local v0    # "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    :goto_1
    return-object v0

    .line 421
    .restart local v0    # "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DreamBackend$DreamInfo;

    .line 343
    .local v2, "dreamInfo":Lcom/android/settings/DreamBackend$DreamInfo;
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v0

    .line 344
    .local v0, "count":I
    const/4 v1, 0x0

    .line 345
    .local v1, "drawableId":I
    if-ne v0, v7, :cond_0

    const v1, 0x7f0200bd

    .line 352
    :goto_0
    const-string v8, "getView(%s)"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, v2, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v11, v10, v9

    # invokes: Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v8, v10}, Lcom/android/settings/DreamSettings;->access$200(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    if-eqz p2, :cond_3

    move-object v4, p2

    .line 354
    .local v4, "row":Landroid/view/View;
    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 357
    const v8, 0x1020006

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v10, v2, Lcom/android/settings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    const v8, 0x1020016

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, v2, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const v8, 0x1020019

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 364
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget-boolean v8, v2, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 365
    new-instance v8, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v8, p0, v4}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    iget-object v8, v2, Lcom/android/settings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_4

    .line 378
    .local v7, "showSettings":Z
    :goto_2
    const v8, 0x7f0b0096

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 381
    .local v6, "settingsDivider":Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const v8, 0x102001a

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 385
    .local v5, "settingsButton":Landroid/widget/ImageView;
    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-boolean v8, v2, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 387
    iget-boolean v8, v2, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 388
    iget-boolean v8, v2, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 389
    new-instance v8, Lcom/android/settings/DreamSettings$DreamInfoAdapter$2;

    invoke-direct {v8, p0, v4}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$2;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    return-object v4

    .line 347
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    .end local v4    # "row":Landroid/view/View;
    .end local v5    # "settingsButton":Landroid/widget/ImageView;
    .end local v6    # "settingsDivider":Landroid/view/View;
    .end local v7    # "showSettings":Z
    :cond_0
    add-int/lit8 v8, v0, -0x1

    if-ne p1, v8, :cond_1

    const v1, 0x7f0200b7

    goto/16 :goto_0

    .line 348
    :cond_1
    if-nez p1, :cond_2

    const v1, 0x7f0200c0

    goto/16 :goto_0

    .line 349
    :cond_2
    const v1, 0x7f0200ba

    goto/16 :goto_0

    .line 353
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1

    .restart local v3    # "radioButton":Landroid/widget/RadioButton;
    .restart local v4    # "row":Landroid/view/View;
    :cond_4
    move v7, v9

    .line 377
    goto :goto_2

    .line 385
    .restart local v5    # "settingsButton":Landroid/widget/ImageView;
    .restart local v6    # "settingsDivider":Landroid/view/View;
    .restart local v7    # "showSettings":Z
    :cond_5
    const/4 v9, 0x4

    goto :goto_3

    .line 386
    :cond_6
    const v8, 0x3ecccccd    # 0.4f

    goto :goto_4
.end method
