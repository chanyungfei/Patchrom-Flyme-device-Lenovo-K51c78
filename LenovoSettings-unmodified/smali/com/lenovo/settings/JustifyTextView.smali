.class public Lcom/lenovo/settings/JustifyTextView;
.super Landroid/widget/TextView;
.source "JustifyTextView.java"


# static fields
.field public static final TWO_CHINESE_BLANK:Ljava/lang/String; = "  "


# instance fields
.field private mLineY:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private drawScaledText(Landroid/graphics/Canvas;ILjava/lang/String;F)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "lineStart"    # I
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "lineWidth"    # F

    .prologue
    .line 70
    const/4 v8, 0x0

    .line 71
    .local v8, "x":F
    invoke-direct {p0, p2, p3}, Lcom/lenovo/settings/JustifyTextView;->isFirstLineOfParagraph(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    const-string v0, "  "

    .line 73
    .local v0, "blanks":Ljava/lang/String;
    iget v9, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {p1, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    .line 75
    .local v1, "bw":F
    add-float/2addr v8, v1

    .line 77
    const/4 v9, 0x3

    invoke-virtual {p3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 80
    .end local v0    # "blanks":Ljava/lang/String;
    .end local v1    # "bw":F
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 81
    .local v5, "gapCount":I
    const/4 v6, 0x0

    .line 82
    .local v6, "i":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_1

    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3000

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3000

    if-ne v9, v10, :cond_1

    .line 84
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "substring":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    .line 86
    .local v3, "cw":F
    iget v9, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    add-float/2addr v8, v3

    .line 88
    add-int/lit8 v6, v6, 0x2

    .line 91
    .end local v3    # "cw":F
    .end local v7    # "substring":Ljava/lang/String;
    :cond_1
    iget v9, p0, Lcom/lenovo/settings/JustifyTextView;->mViewWidth:I

    int-to-float v9, v9

    sub-float/2addr v9, p4

    int-to-float v10, v5

    div-float v4, v9, v10

    .line 92
    .local v4, "d":F
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 93
    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    .line 95
    .restart local v3    # "cw":F
    iget v9, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {p1, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 96
    add-float v9, v3, v4

    add-float/2addr v8, v9

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "cw":F
    :cond_2
    return-void
.end method

.method private isFirstLineOfParagraph(ILjava/lang/String;)Z
    .locals 5
    .param p1, "lineStart"    # I
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private needScale(Ljava/lang/String;)Z
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 31
    .local v6, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getCurrentTextColor()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getDrawableState()[I

    move-result-object v10

    iput-object v10, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 33
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getMeasuredWidth()I

    move-result v10

    iput v10, p0, Lcom/lenovo/settings/JustifyTextView;->mViewWidth:I

    .line 34
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "text":Ljava/lang/String;
    const/4 v10, 0x0

    iput v10, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    .line 36
    iget v10, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getTextSize()F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    .line 37
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 39
    .local v2, "layout":Landroid/text/Layout;
    if-nez v2, :cond_1

    .line 66
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 45
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v10, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v11, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 46
    .local v8, "textHeight":I
    int-to-float v10, v8

    invoke-virtual {v2}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {v2}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v8, v10

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 49
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 50
    .local v5, "lineStart":I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 51
    .local v4, "lineEnd":I
    invoke-virtual {p0}, Lcom/lenovo/settings/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v7, v5, v4, v10}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    .line 53
    .local v9, "width":F
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_3

    .line 56
    invoke-direct {p0, v3}, Lcom/lenovo/settings/JustifyTextView;->needScale(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 57
    invoke-direct {p0, p1, v5, v3, v9}, Lcom/lenovo/settings/JustifyTextView;->drawScaledText(Landroid/graphics/Canvas;ILjava/lang/String;F)V

    .line 64
    :goto_1
    iget v10, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    add-int/2addr v10, v8

    iput v10, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_2
    iget v10, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p1, v3, v12, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 62
    :cond_3
    iget v10, p0, Lcom/lenovo/settings/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p1, v3, v12, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 25
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 26
    return-void
.end method
