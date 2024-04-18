package api

import (
	"fmt"

	"github.com/PrajvalBadiger/gath/views"
	"github.com/labstack/echo/v4"
)

// Handler
func Index_handler(c echo.Context) error {
	index_component := views.Index()

	err := index_component.Render(c.Request().Context(), c.Response().Writer)
	if err != nil {
		return fmt.Errorf("Couldn't render template %w", err)
	}

	return nil
}
