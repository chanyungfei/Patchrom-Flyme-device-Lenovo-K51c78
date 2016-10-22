.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public final color:I

.field private mImageView:Landroid/widget/ImageView;

.field public mIsVisibility:Z

.field public final mTitle:Ljava/lang/String;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleRes"    # I
    .param p3, "colorRes"    # I
    .param p4, "isVisibility"    # Z

    .prologue
    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v4, -0x2710

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "colorRes"    # I
    .param p4, "userHandle"    # I
    .param p5, "isVisibility"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mIsVisibility:Z

    .line 38
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mImageView:Landroid/widget/ImageView;

    .line 39
    const-string v3, "StorageItemPreference"

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->TAG:Ljava/lang/String;

    .line 49
    if-eqz p3, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f080029

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 54
    .local v2, "width":I
    const v3, 0x7f08002a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, "height":I
    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .end local v0    # "height":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    :goto_0
    iput-boolean p5, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mIsVisibility:Z

    move-object v3, p2

    .line 60
    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mTitle:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    const v3, 0x7f0c072a

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 64
    iput p4, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 65
    return-void

    .line 57
    :cond_0
    const v3, -0xff01

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 89
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 90
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 91
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    return-object v0
.end method

.method private setIconVisibility(Z)V
    .locals 3
    .param p1, "visibility"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIconVisibility mImageView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 79
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getview title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " convertView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mImageView:Landroid/widget/ImageView;

    .line 73
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mIsVisibility:Z

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIconVisibility(Z)V

    .line 74
    return-object v0
.end method
