.class public Lcom/mediatek/text/style/BackgroundImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BackgroundImageSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mWidth:I

    .line 68
    iput p1, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mImageId:I

    .line 69
    iput-object p2, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mWidth:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mImageId:I

    .line 78
    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    instance-of v3, p0, Landroid/text/SpannableStringBuilder;

    if-nez v3, :cond_1

    .line 159
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 151
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 152
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lcom/mediatek/text/style/BackgroundImageSpan;

    invoke-virtual {v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/text/style/BackgroundImageSpan;

    .line 153
    .local v2, "spans":[Lcom/mediatek/text/style/BackgroundImageSpan;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 157
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Lcom/mediatek/text/style/BackgroundImageSpan;->convertToDrawable(Landroid/content/Context;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertToDrawable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mImageId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;IFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "x"    # F
    .param p4, "top"    # I
    .param p5, "y"    # I
    .param p6, "bottom"    # I
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v1, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "should call convertToDrawable() first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    int-to-float v1, p4

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v2, p6, p4

    invoke-virtual {v1, v3, v3, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 169
    iget v2, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mWidth:I

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/text/style/BackgroundImageSpan;->draw(Landroid/graphics/Canvas;IFIIILandroid/graphics/Paint;)V

    .line 172
    int-to-float v5, p7

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 183
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 184
    .local v0, "size":F
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 187
    :cond_0
    float-to-int v1, v0

    iput v1, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mWidth:I

    .line 188
    iget v1, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mWidth:I

    return v1
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    iget v0, p0, Lcom/mediatek/text/style/BackgroundImageSpan;->mImageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
