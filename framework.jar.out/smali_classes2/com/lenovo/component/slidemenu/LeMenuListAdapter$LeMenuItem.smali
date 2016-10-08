.class public final Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
.super Ljava/lang/Object;
.source "LeMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeMenuItem"
.end annotation


# static fields
.field public static final LIST_DEVIDER:I = -0x2

.field public static final NO_ICON:I = -0x1


# instance fields
.field private final isTitle:Z

.field private mContent:Ljava/lang/String;

.field private mContentId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mId:Ljava/lang/Integer;

.field private mRemark:Ljava/lang/String;

.field private mRemarkId:I

.field private mTitle:Ljava/lang/String;

.field private mTitleId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    .line 483
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    .line 485
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 486
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 489
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 491
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 492
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle:Z

    .line 505
    iput p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    .line 506
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "contentId"    # I
    .param p2, "iconId"    # I
    .param p3, "remarkId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    .line 483
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    .line 485
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 486
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 489
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 491
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 492
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle:Z

    .line 529
    iput p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 530
    iput p2, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 531
    iput p3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 532
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "contentId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "remarkId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    .line 483
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    .line 485
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 486
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 489
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 491
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 492
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle:Z

    .line 543
    iput p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 544
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 545
    iput p3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 546
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    .line 483
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    .line 485
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 486
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 489
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 491
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 492
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle:Z

    .line 517
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "remark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    .line 483
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    .line 485
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 486
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 489
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 491
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 492
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle:Z

    .line 571
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 572
    iput p2, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 573
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "remark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    .line 483
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    .line 485
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    .line 486
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    .line 489
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 491
    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    .line 492
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle:Z

    .line 557
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 558
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 559
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    .line 560
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mContentId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mIconId:I

    return v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarkId()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mRemarkId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mTitleId:I

    return v0
.end method

.method public isTitle()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle:Z

    return v0
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->mId:Ljava/lang/Integer;

    .line 631
    return-void
.end method
